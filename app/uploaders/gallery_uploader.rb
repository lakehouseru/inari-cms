
  class GalleryUploader < CarrierWave::Uploader::Base
    include CarrierWave::MiniMagick



    def store_dir
       "uploads/galleries/#{model.id}"
    end

    process resize_to_limit: [2000, 2000]
    
    version :large do
      
      process resize_to_fit: [960, 960]

    end

    version :medium do
      process resize_to_fit: [600, 600]
    end

    version :small do
      process resize_to_fill: [223, 149]
    end

    version :thumb do
      process resize_to_fill: [107, 71]
    end

    version :card do
      process resize_to_fill: [550, 250]
    end

    def extension_white_list
      %w(jpg jpeg gif png)
    end

    
  end
