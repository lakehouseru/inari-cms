class GalleryAttachment < ActiveRecord::Base
   mount_uploader :image, GalleryUploader
   belongs_to :gallery

end
