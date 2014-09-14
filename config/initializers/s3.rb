CarrierWave.configure do |config|
  if Rails.env.test? || Rails.env.development?
    config.storage = :file
    config.enable_processing = false
    config.root = "#{Rails.root}/tmp/uploads/#{DateTime.now.to_f}.#{rand(999)}.#{rand(999)}"
  else
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
  config.cache_dir = "#{Rails.root}/tmp/uploads/#{DateTime.now.to_f}.#{rand(999)}.#{rand(999)}"
end