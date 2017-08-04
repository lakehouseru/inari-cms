require "administrate/field/base"

class IntegerField < Administrate::Field::Number
  def to_s
    data
  end
end
