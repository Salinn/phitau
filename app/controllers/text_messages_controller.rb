class TextMessagesController < ApplicationController
  before_action :set_text_message, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  def index
    @text_messages = TextMessage.all.reverse
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
    current = 0
    if text_message.to_number != ""
      message = text_message.message.gsub(/line_break/,"\n")
      if user.phone_number.length == 10
        phone_number = '1' + user.phone_number
      else
        phone_number = user.phone_number
      end
      $twilio_client.account.messages.create(
        :from => "+#{$twilio_phone_number}",
        :to => "+#{phone_number}",
        :body => "#{message}"
      )
    else
      User.all.each do |user|
        if user.user_status == text_message.user_group
          first_name = user.first_name
          line_break = line_break
          message = text_message.message.gsub(/first_name/,first_name)
          message = message.gsub(/line_break/,"\n")
          contacts = message.match(/start_contacts(.*)end_contacts/)
          contactss = contacts[1].split(',')
          final_message = message.gsub(contacts[0],contactss[current])
          current = current + 1
          if user.phone_number.length == 10
            phone_number = '1' + user.phone_number
          else
            phone_number = user.phone_number
          end
          $twilio_client.account.messages.create(
            :from => "+#{$twilio_phone_number}",
            :to => "+#{phone_number}",
            :body => "#{final_message}"
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
