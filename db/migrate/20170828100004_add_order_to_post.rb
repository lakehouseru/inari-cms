class AddOrderToPost < ActiveRecord::Migration[5.1]
  def change
  	add_column :posts, :order, :integer
  end
end
