class PageTemplate < ApplicationRecord
  has_many :pages
  validates :title, :slug,  presence: true
end
