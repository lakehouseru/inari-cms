require "administrate/field/base"

class BootsyField < Administrate::Field::String
  def to_s
    data
  end
end
