class AddSlugToPostCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :post_categories, :slug, :string
  end
end
