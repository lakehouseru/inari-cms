require "administrate/base_dashboard"

class PageDashboard < Administrate::BaseDashboard

  ATTRIBUTE_TYPES = {
      id: Field::Number,
      title: Field::String,
      published_at: Field::DatePicker,
      content: WysiwygField,
      page_title: Field::String,
      excerpt: Field::String,
      keywords: Field::String,
      description:  Field::String,
      slug: Field::String,
      gallery:  Select2Field, 
      image: ImageField,
      page_template: Field::BelongsTo
  }

  COLLECTION_ATTRIBUTES = [
      :id,
      :title,
      :slug,
      :image,
      :published_at

  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = ATTRIBUTE_TYPES.keys

  FORM_ATTRIBUTES = [\
      :title,
      :excerpt,
      :image,
      :content,
      :published_at,
      :page_template,
      :gallery,      
      :slug,
      :page_title,
      :keywords,
      :description

  ]

  def display_resource(item)
    item.try(:title)
  end
end