class CreateBlocks < ActiveRecord::Migration[5.1]
  def change
    create_table :blocks do |t|
      t.string :title
      t.string :slug
      t.text :content
      t.text :description

      t.timestamps
    end
  end
end
