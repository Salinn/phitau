class TwilioController < ApplicationController
  include Webhookable

  after_filter :set_header

  skip_before_action :verify_authenticity_token

  def voice
    response = Twilio::TwiML::Response.new do |r|
      r.Say 'Hey there. Congrats on integrating Twilio into your Rails 4 app.', :voice => 'alice'
      r.Play 'http://linode.rabasa.com/cantina.mp3'
    end

    render_twiml response
  end

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