module BlocksHelper
  def render_block (slug)
    Block.find_by(slug: slug).content.html_safe if slug.present? && Block.find_by(slug: slug).present?
  end  

  def render_block_title (slug)
    Block.find_by(slug: slug).title if slug.present? && Block.find_by(slug: slug).present?
  end
end