class AddContentToSpots < ActiveRecord::Migration[5.2]
  def change
    add_column :spots, :content, :text
  end
end
