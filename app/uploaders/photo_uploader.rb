class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  process :convert => 'png'
  process :tags => ['profile_picture', 'logo', 'banner_image']
end
