class AddPrfailImageIdToSpots < ActiveRecord::Migration[5.2]
  def change
    add_column :spots, :profile_image_id, :text
  end
end
