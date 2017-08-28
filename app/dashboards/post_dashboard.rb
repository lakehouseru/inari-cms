require "administrate/base_dashboard"

class PostDashboard < Administrate::BaseDashboard

  ATTRIBUTE_TYPES = {
      id: Field::Number,
      title: Field::String,
      order: Field::Number,
      published_at: Field::DatePicker,
      content: WysiwygField,
      page_title: Field::String,
      excerpt: Field::String,
      keywords: Field::String,
      description:  Field::String,
      post_category: Select2Field,
      post_template: Select2Field,
      slug: Field::String,
      gallery:  Select2Field, 
      image: ImageField
  }

  COLLECTION_ATTRIBUTES = [
      :id,
      :title,
      :slug,
      :image,
      :post_category,
      :published_at

  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = ATTRIBUTE_TYPES.keys

  FORM_ATTRIBUTES = [\
      :title,
      :order,
      :excerpt,
      :image,
      :content,
      :published_at,
      :post_category,
      :post_template,
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