class Gallery < ApplicationRecord

  include RailsSortable::Model
  set_sortable :sort  # Indicate a sort column
  # If you do NOT want timestamps to be updated on sorting, use the following option.
  # set_sortable :sort, without_updating_timestamps: true

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
  has_many :facility
  validates_presence_of :gallery_attachments, :on => [:update ]
  validates_presence_of :content, :on => [:update ]
  validates_presence_of :name , :slug
  validates_uniqueness_of :slug

  accepts_nested_attributes_for :gallery_attachments

end
