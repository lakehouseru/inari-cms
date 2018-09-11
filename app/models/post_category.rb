class PostCategory < ApplicationRecord
	has_many :posts
  validates :slug, :name,  presence: true
  validates :slug, uniqueness: true
  validates_format_of :slug, with: /\A[a-z0-9\-_]+\z/i
end
