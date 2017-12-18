class SliderUploader < ThumbnailUploader
  include CarrierWave::MiniMagick
  def store_dir
    "uploads/sliders/#{model.id}"
  end

  storage :file

  process resize_to_fill: [1705, 549]

  def extension_white_list
    %w(jpg jpeg gif png)
  end
end
