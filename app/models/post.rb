# == Schema Information
#
# Table name: posts
#
#  id               :integer          not null, primary key
#  title            :string
#  content          :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  excerpt          :string
#  keywords         :string
#  description      :string
#  post_category_id :integer
#  post_template_id :integer
#  gallery_id       :integer
#  slug             :string
#  page_title       :string

class Post < ApplicationRecord
  mount_uploader :image, ThumbnailUploader
  extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]
  
	belongs_to :post_category
	belongs_to :page_template
	belongs_to :gallery 



  #default_scope { where(type: nil) }

  scope :published, -> {where("published_at <= ?", Date.today)}
  scope :by_category_slug,  -> (category_slug) { where(post_category_id: PostCategory.find_by(slug: category_slug).id) }

  def human_published_at 
    "#{l published_at}"
  end
end
