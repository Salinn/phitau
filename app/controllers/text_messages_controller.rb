class TextMessagesController < ApplicationController
  before_action :set_text_message, only: [:show, :edit, :update, :destroy]

  def index
    @text_messages = TextMessage.all
  end

  def show
  end

  def new
    @text_message = TextMessage.new
  end

  def edit
  end

  def create
    if params[:Body].nil?
      @text_message = TextMessage.new(text_message_params)
      flash[:notice] = 'TextMessage was successfully created.' if @text_message.save
      send_text_message @text_message
    else
      @text_message = TextMessage.new(:message => params[:Body], :to_number => params[:From])
      flash[:notice] = 'TextMessage was successfully created.' if @text_message.save
    #   send a text or email to the recruitment chair
    end
  end

  def update
    flash[:notice] = 'TextMessage was successfully updated.' if @text_message.update(text_message_params)
  end

  def destroy
    @text_message.destroy
  end

  def send_text_message text_message
    if text_message.to_number != ""
      $twilio_client.account.messages.create(
        :from => "+#{$twilio_phone_number}",
        :to => "+#{text_message.to_number}",
        :body => "#{text_message.message}"
      )
    else
      User.all.each do |user|
        if user.role == text_message.user_group
          first_name = user.first_name
          line_break = line_break
          message = text_message.message.gsub(/first_name/,first_name)
          message = text_message.message.gsub(/line_break/,"\n")
          $twilio_client.account.messages.create(
            :from => "+#{$twilio_phone_number}",
            :to => "+#{user.phone_number}",
            :body => "#{message}"
          )
        end
      end
    end

    redirect_to root_path, notice: 'Your SMS has been sent' # This is the interrupt that will make it so it doesn't try to render the view
  end

  private
    def set_text_message
      @text_message = TextMessage.find(params[:id])
    end

    def text_message_params
      params.require(:text_message).permit(:to_number, :user_group, :message, :Body, :From)
    end
end
