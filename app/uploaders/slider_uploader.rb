class SliderUploader < ThumbnailUploader
  include CarrierWave::MiniMagick
  def store_dir
    "uploads/sliders/#{model.id}"
  end
end
