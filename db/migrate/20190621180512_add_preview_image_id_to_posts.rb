class AddPreviewImageIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :preview_image_id, :integer
  end
end
