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
  
	belongs_to :post_category
	belongs_to :post_template
	belongs_to :gallery 

	validates :slug, :title,  presence: true
  validates :slug, uniqueness: true
  validates_format_of :slug, with: /\A[a-z0-9\-_]+\z/i

  scope :published, -> {where("published_at <= ?", Date.today)}

  def human_published_at 
    "#{l published_at}"
  end
end
