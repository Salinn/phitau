class TwilioController < ApplicationController

  def index
  end

  def new_message
  end

  def send_text_message to_number, message
    $twilio_client.account.messages.create(
        :from => '+15084553137',
        :to => "+#{to_number}",
        :body => "#{message}"
    )

    redirect_to root_path, notice: 'Your SMS has been sent' # This is the interrupt that will make it so it doesn't try to render the view
  end
  helper_method :send_text_message
end