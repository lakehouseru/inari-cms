require "administrate/field/base"

class IconField < Administrate::Field::String
  def to_s
    data
  end
end
