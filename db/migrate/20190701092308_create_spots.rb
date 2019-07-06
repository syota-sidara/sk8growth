class CreateSpots < ActiveRecord::Migration[5.2]
  def change
    create_table :spots do |t|
      t.string :title
      t.text :body
      t.text :address

      t.timestamps
    end
  end
end
