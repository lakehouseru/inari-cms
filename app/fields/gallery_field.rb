require "administrate/field/base"

class GalleryField < Administrate::Field::Base
  def to_s
    data
  end
end
