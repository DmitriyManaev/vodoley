class ImageUploader < BaseUploader
  def store_dir
    "uploads/#{Rails.env}/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  process quality: 100

  version :small do
    process resize_to_fit: [268, 171]
  end
end
