class CreateTrends < ActiveRecord::Migration[5.2]
  def change
    create_table :trends do |t|
      t.string :video
      t.string :title
      t.text :body  

      t.timestamps
    end
  end
end
