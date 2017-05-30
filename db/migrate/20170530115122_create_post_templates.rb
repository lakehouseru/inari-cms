class CreatePostTemplates < ActiveRecord::Migration[5.0]
  def change
    create_table :post_templates do |t|
    	t.string :slug
        t.string :label

        t.timestamps
    end
  end
end
