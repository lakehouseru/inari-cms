class CreateSlider < ActiveRecord::Migration[5.1]
  def change
    create_table :sliders do |t|
      t.string :header
      t.string :link
      t.text :main_text
      t.text :additional_text
      t.string :action_text
      t.string :key_image
      t.timestamps
    end
  end
end
