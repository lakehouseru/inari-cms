require "administrate/field/base"

class ColorField < Administrate::Field::String
  def to_s
    data
  end
end
