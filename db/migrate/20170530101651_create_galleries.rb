class CreateGalleries < ActiveRecord::Migration[5.0]
  def change
    create_table :galleries do |t|
    	t.string :name
    	t.string :thumbnail
    	t.text   :content
      t.timestamps
    end
  end
end
