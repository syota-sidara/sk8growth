class AddSpotIdToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :spot_id, :integer
  end
end
