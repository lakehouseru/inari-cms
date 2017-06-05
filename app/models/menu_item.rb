class MenuItem < ActiveRecord::Base
  acts_as_nested_set
  include TheSortableTree::Scopes
  belongs_to :menu
  belongs_to :post
  validates :name,  presence: true
  alias_attribute :title, :name

  def real_path
    if self.post.present?
      public_url = self.child? ? "#{self.parent.real_path}/#{self.post.slug}" : "#{self.post.slug}"
      return public_url
    else
      return self.url.to_s
    end
  end

  def shortpath 
    if self.post.present?
      return self.post.slug
    else
      return self.url.to_s
    end
  end

  def current? (uri)
    if uri == self.shortpath
      return true  
    else
      return false
    end
  end

end
