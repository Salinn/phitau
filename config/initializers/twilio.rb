require 'twilio-ruby'

account_sid = ENV['account_sid']
auth_token = ENV['auth_token']
$twilio_phone_number = ENV['twilio_phone_number']

$twilio_client = Twilio::REST::Client.new account_sid, auth_token