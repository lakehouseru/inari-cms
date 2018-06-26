class AddPageTemplateToPost < ActiveRecord::Migration[5.1]
  def change
    add_reference :posts, :page_template, foreign_key: true
  end
end
