require "administrate/field/base"

class PasswordField < Administrate::Field::Base
  def to_s
    data
  end
end
