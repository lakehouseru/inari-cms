class AddSortToGalleryAndAttach < ActiveRecord::Migration[5.1]
  def change
  	add_column :galleries, :sort, :integer
  	add_column :gallery_attachments, :sort, :integer
  end
end
