Spree::Image.class_eval do
  if Rails.env.production?
    if ENV['S3_KEY'] && ENV['S3_SECRET'] && ENV['S3_BUCKET']
      S3_OPTIONS = {
        :storage => 's3',
        :s3_credentials => {
          :access_key_id     => ENV['S3_KEY'],
          :secret_access_key => ENV['S3_SECRET']
        },
        :bucket => ENV['S3_BUCKET']
      }
    else
      S3_OPTIONS = {
        :storage => 's3',
        :s3_credentials => Rails.root.join('config', 's3.yml')
      }
    end
  else
    S3_OPTIONS = { :storage => 'filesystem' }
  end

  attachment_definitions[:attachment] = (attachment_definitions[:attachment] || {}).merge(S3_OPTIONS)
end