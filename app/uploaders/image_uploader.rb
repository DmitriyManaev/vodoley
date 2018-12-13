class ImageUploader < BaseUploader
  def store_dir
    "uploads/#{Rails.env}/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :small do
    process resize_to_fill: [268, 171]
  end

  def default_url(*args)
    "/images/fallback/" + [version_name, "placeholder-image.png"].compact.join('_')
  end
end
