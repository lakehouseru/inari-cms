require "administrate/field/base"

class AddressField < Administrate::Field::Base
  def to_s
    data
  end
end
