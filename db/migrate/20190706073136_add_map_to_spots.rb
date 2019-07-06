class AddMapToSpots < ActiveRecord::Migration[5.2]
  def change
    add_column :spots, :map, :string
  end
end
