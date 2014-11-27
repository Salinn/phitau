#This is used to save pictures to amazon web services
CarrierWave.configure do |config|
  config.fog_credentials = {
        :provider               => 'AWS',
        :aws_access_key_id      => ENV['S3_KEY'],
        :aws_secret_access_key  => ENV['S3_SECRET']
        # :region                 => ENV['S3_REGION'] # Change this for different AWS region. Default is 'us-east-1'
    }
    config.storage = :fog
    config.fog_directory  = ENV['S3_BUCKET']
    config.fog_public     = false
    config.fog_attributes = {}
end