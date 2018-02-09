
  class GalleryUploader < CarrierWave::Uploader::Base
    include CarrierWave::MiniMagick



    def store_dir
       "uploads/galleries/#{model.id}"
    end

    process resize_to_limit: [1160, 2000]

    version :large do
      
      process resize_to_fit: [960, 960]

      process :watermark
    end

    version :medium do
      process resize_to_fit: [600, 600]
      process :watermark
    end

    version :small do
      process resize_to_fill: [223, 149]
    end

    version :thumb do
      process resize_to_fill: [107, 71]
    end

    def extension_white_list
      %w(jpg jpeg gif png)
    end

    def watermark
      manipulate! do |img|
        logo = MiniMagick::Image.open("#{Rails.root}/app/assets/images/logo.svg")
        img = img.composite(logo) do |image|
            image.gravity "SouthEast" # copy second_image onto first_image from (20, 20)
            image.alpha "Set"
            image.blend  "50"

        end
      end
    end
  end
