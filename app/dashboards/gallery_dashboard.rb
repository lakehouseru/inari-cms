require "administrate/base_dashboard"

class GalleryDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    posts: Field::HasMany,
    gallery_attachments: GalleryField,
    id: Field::Number,
    name: Field::String,
    thumbnail: Field::String,
    slug: Field::String,
    image: ImageField,
    content: WysiwygField,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :name,
    :created_at
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :name,
    :posts,
    :gallery_attachments,
    :id,
    :created_at,
    :updated_at,
  ]

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :name,
    :gallery_attachments,
    :image,
    :slug,
    :posts
  ]

  # Overwrite this method to customize how galleries are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(gallery)
  #   "Gallery ##{gallery.id}"
  # end
  def display_resource(item)
    item.name
  end
end
