class AddIconToSlider < ActiveRecord::Migration[5.1]
  def change
    add_column :sliders, :icon, :text
  end
end
