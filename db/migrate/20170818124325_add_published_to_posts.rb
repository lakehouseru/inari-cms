class AddPublishedToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :published_at, :datetime
  end
end
