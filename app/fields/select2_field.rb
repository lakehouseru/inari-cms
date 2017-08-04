require "administrate/field/base"

class Select2Field < Administrate::Field::BelongsTo
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
