require "administrate/base_dashboard"

class MenuDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
      id: Field::Number,
      name: Field::String,
      slug: Field::String
  }

  COLLECTION_ATTRIBUTES = [
      :id,
      :name,
      :slug
  ]

  SHOW_PAGE_ATTRIBUTES = ATTRIBUTE_TYPES.keys

  FORM_ATTRIBUTES = [\
    :name,
    :slug
  ]

  def display_resource(item)
    item.try(:name)
  end
end