class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  CarrierWave.configure do |config|
    config.cache_storage = :file
   end

  Cloudinary.config do |config|
    config.secure = true
  end
  
  process :convert => 'png'
  process :tags => ['profile_picture', 'logo', 'banner_image', 'image', 'banner']
end
