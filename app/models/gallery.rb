class Gallery < ApplicationRecord
  paginates_per 20

  has_many :posts
  has_many :items
  has_many :gallery_attachments
  validates_presence_of :gallery_attachments, :on => [:update ]
  validates_presence_of :content, :on => [:update ]
  validates_presence_of :name

  accepts_nested_attributes_for :gallery_attachments

end
