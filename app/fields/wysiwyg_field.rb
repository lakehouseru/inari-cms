require "administrate/field/base"

class WysiwygField < Administrate::Field::String
  def to_s
    data
  end
end
