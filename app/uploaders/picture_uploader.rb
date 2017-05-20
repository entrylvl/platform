class PictureUploader < CarrierWave::Uploader::Base
  storage :file

  def store_dir
    'user/pictures/'
  end
end
