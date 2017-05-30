class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
    	t.string	:title
    	t.text		:content
    	t.string	:excerpt
    	t.string	:keywords
    	t.string	:description
    	t.string	:slug
    	t.string	:page_title
    	t.integer	:post_category_id
    	t.integer	:post_template_id
    	t.integer	:gallery_id

    	t.timestamps
    end
  end
end


