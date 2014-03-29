activate :s3_sync do |s3_sync|
  s3_sync.bucket                     = ENV['AWS_S3_BUCKET'] # The name of the S3 bucket you are targeting. This is globally unique.
  s3_sync.region                     = ENV['AWS_BUCKET_REGION']     # The AWS region for your bucket.
  s3_sync.aws_access_key_id          = ENV['AWS_ACCESS_KEY_ID']
  s3_sync.aws_secret_access_key      = ENV['AWS_SECRET_ACCESS_KEY']
  s3_sync.delete                     = true # We delete stray files by default.
  s3_sync.after_build                = false # We do not chain after the build step by default.
  s3_sync.prefer_gzip                = true
  s3_sync.path_style                 = true
  s3_sync.reduced_redundancy_storage = false
  s3_sync.acl                        = 'public-read'
  s3_sync.encryption                 = false

  s3_sync.add_caching_policy 'image/png', expires: Time.now + (60 * 60 * 24 * 7 * 365)
  s3_sync.add_caching_policy 'image/jpeg', expires: Time.now + (60 * 60 * 24 * 7 * 365)
  s3_sync.add_caching_policy 'application/javascript', expires: Time.now + (60 * 60 * 24 * 7 * 365)
end

configure :build do
  activate :gzip
end
