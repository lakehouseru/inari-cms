require "administrate/field/base"

class TelnumField < Administrate::Field::Base
  def to_s
    data
  end
end
