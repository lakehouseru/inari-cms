class AddOrderToMenuItems < ActiveRecord::Migration[5.1]
  def change
    add_column :menu_items, :order, :integer
  end
end
