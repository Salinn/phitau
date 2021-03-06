class TextMessagesController < ApplicationController
  before_action :set_text_message, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  respond_to :html

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
    respond_with(@text_message, location: text_messages_path)
  end

  def update
    flash[:notice] = 'TextMessage was successfully updated.' if @text_message.update(text_message_params)
    respond_with(@text_message, location: text_messages_path)
  end

  def destroy
    respond_with(@text_message.destroy, location: text_messages_path)
  end

  def send_text_message text_message
    current_contact_index = 0
    users = User.where(user_status: text_message.user_group)
    contacts = text_message.contact_info.split(',')

    users.each do |user|
      if user.nil? || user.phone_number.nil? || user.first_name.nil?
        next
      end

      first_name = user.first_name
      message = text_message.message.gsub(/first_name/,first_name)
      message = message.gsub(/line_break/,"\n")
      message = message.gsub(/contact_person/,contacts[current_contact_index])

      phone_number = user.phone_number.gsub(/[^\d]/, '')

      phone_number = '1' + phone_number if (phone_number.length == 10)

      begin
        $twilio_client.account.messages.create(
            :from => "+#{$twilio_phone_number}",
            :to => "+#{phone_number}",
            :body => "#{message}"
        )

        (current_contact_index == (contacts.length-1)) ? current_contact_index = 0 : current_contact_index += 1
      rescue
        puts "Invalid Number - #{user.first_name} #{user.phone_number}"
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
