class CreateGalleryAttachments < ActiveRecord::Migration[5.0]
  def change
    create_table :gallery_attachments do |t|
      t.integer :gallery_id
      t.string :image

      t.timestamps null: false
    end
  end
end
