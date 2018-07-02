class AddNestedSetToMenuItems < ActiveRecord::Migration[5.1]
  def self.up
    add_column :menu_items, :parent_id, :integer # Comment this line if your project already has this column
    # Category.where(parent_id: 0).update_all(parent_id: nil) # Uncomment this line if your project already has :parent_id
    add_column :menu_items, :lft,       :integer
    add_column :menu_items, :rgt,       :integer

    # optional fields
    add_column :menu_items, :depth,          :integer
    add_column :menu_items, :children_count, :integer

    # This is necessary to update :lft and :rgt columns
    MenuItem.reset_column_information
    MenuItem.rebuild!
  end

  def self.down
    remove_column :menu_items, :parent_id
    remove_column :menu_items, :lft
    remove_column :menu_items, :rgt

    # optional fields
    remove_column :menu_items, :depth
    remove_column :menu_items, :children_count
  end
end
