class AddImageIdToImages < ActiveRecord::Migration[5.2]
  def change
    add_column :images, :image_id, :text
  end
end