class AddPrfailImageIdToTrends < ActiveRecord::Migration[5.2]
  def change
    add_column :trends, :profile_image_id, :text
  end
end
