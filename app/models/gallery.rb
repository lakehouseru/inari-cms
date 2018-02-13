class Gallery < ApplicationRecord

  include PgSearch
    pg_search_scope :search,
            against: [:name, :content],
            using: {
                      trigram: {threshold: 0.1},
                      tsearch: {dictionary: "russian"}
                    },
                    ranked_by: "(0.1 * :trigram) + (:tsearch / 2.0)"
  paginates_per 20

  has_many :posts
  has_many :items
  has_many :gallery_attachments
  validates_presence_of :gallery_attachments, :on => [:update ]
  validates_presence_of :content, :on => [:update ]
  validates_presence_of :name , :slug
  validates_uniqueness_of :slug

  accepts_nested_attributes_for :gallery_attachments

end
