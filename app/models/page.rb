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

class Page < Post

before_save :set_type
#default_scope {where(type: "Page") }



def set_type
  self.type = 'Page'
end

end
