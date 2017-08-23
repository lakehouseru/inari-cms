require "administrate/base_dashboard"

class BlockDashboard < Administrate::BaseDashboard

  ATTRIBUTE_TYPES = {
      id: Field::Number,
      title: Field::String,
      slug: Field::String,
      content: WysiwygField,
      description:  Field::String

  }

  COLLECTION_ATTRIBUTES = [
      :id,
      :title,
      :slug,
      :content,
      :description

  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = ATTRIBUTE_TYPES.keys

  FORM_ATTRIBUTES = [
      :title,
      :slug,
      :content,
      :description

  ]

  def display_resource(item)
    item.try(:title)
  end
end