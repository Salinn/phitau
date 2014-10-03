Recaptcha.configure do |config|
  config.public_key  = ENV['public_key']
  config.private_key = ENV['private_key']
end
