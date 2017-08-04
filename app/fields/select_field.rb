require "administrate/field/base"

class SelectField < Administrate::Field::String
  def to_s
    data
  end

   def self.searchable?
    true
  end

  def selectable_options
    collection
  end

  private

  def collection
    @collection ||= options.fetch(:collection, [])
  end
end
