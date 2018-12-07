class BaseUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  storage :file

  def cache_dir
    Rails.root.join("public/uploads/#{Rails.env}/tmp")
  end
end