class AddLocationIdToSpots < ActiveRecord::Migration[5.2]
  def change
    add_column :spots, :location_id, :integer
  end
end
