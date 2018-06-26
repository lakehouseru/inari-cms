class CreatePageTemplates < ActiveRecord::Migration[5.1]
  def change
    create_table :page_templates do |t|
      t.string :title
      t.string :slug
      t.text :description

      t.timestamps
    end
  end
end
