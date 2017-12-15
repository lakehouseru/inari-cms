require "administrate/base_dashboard"

class SliderDashboard < Administrate::BaseDashboard

  ATTRIBUTE_TYPES = {
      id: Field::Number,
      header: Field::String,
      link: Field::String,
      key_image: ImageField,
      main_text: Field::String,
      additional_text: Field::String,
      action_text: Field::String
  }

  COLLECTION_ATTRIBUTES = [
      :id,
      :header,
      :link,
      :key_image,
      :main_text,
      :additional_text,
      :action_text
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = ATTRIBUTE_TYPES.keys

  FORM_ATTRIBUTES = [\
      :id,
      :header,
      :link,
      :key_image,
      :main_text,
      :additional_text,
      :action_text

  ]

  def display_resource(item)
    item.try(:title)
  end
end