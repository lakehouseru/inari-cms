require "administrate/base_dashboard"

class MenuItemDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
      id: Field::Number,
      name: Field::String,
      url: Field::String,
      order: Field::Number,
      post: Field::BelongsTo,
      menu: Field::BelongsTo,
      parent_id: ParentSelectField
  }

  COLLECTION_ATTRIBUTES = [
      :id,
      :name,
      :url,
      :post,
      :menu,
      :parent_id
  ]

  SHOW_PAGE_ATTRIBUTES = ATTRIBUTE_TYPES.keys

  FORM_ATTRIBUTES = [
    :menu,
    :post,
    :name,
    :url,
    :parent_id,
    :order
  ]

  def display_resource(item)
    item.try(:name)
  end
end