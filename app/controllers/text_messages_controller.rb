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
    @text_message = TextMessage.new(text_message_params)
    flash[:notice] = 'TextMessage was successfully created.' if @text_message.save
    send_text_message @text_message
  end

  def update
    flash[:notice] = 'TextMessage was successfully updated.' if @text_message.update(text_message_params)
  end

  def destroy
    @text_message.destroy
  end

  def send_text_message text_message
    current = 0
    User.all.each do |user|
      if user.user_status == text_message.user_group
        first_name = user.first_name
        line_break = line_break
        message = text_message.message.gsub(/first_name/,first_name)
        message = message.gsub(/line_break/,"\n")
        if text_message.contact_info != ""
          contacts = text_message.contact_info
          contactss = contacts.split(',')
          final_message = message + contactss[current]
        else
          final_message = message
        end
        current = current + 1
        if user.phone_number.length == 10
          phone_number = '1' + user.phone_number
        else
          phone_number = user.phone_number
        end
        begin
          $twilio_client.account.messages.create(
              :from => "+#{$twilio_phone_number}",
              :to => "+#{phone_number}",
              :body => "#{final_message}"
          )
        rescue
          puts 'Invalid Number'
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
    params.require(:text_message).permit(:to_number, :user_group, :message, :contact_info, :Body, :From)
  end
end
