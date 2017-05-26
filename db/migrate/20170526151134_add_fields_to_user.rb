class AddFieldsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :fio, :string
    add_column :users, :tel, :string
    add_column :users, :role, :integer
  end
end
