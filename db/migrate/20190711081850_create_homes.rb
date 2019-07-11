class CreateHomes < ActiveRecord::Migration[5.2]
  def change
    create_table :homes do |t|
      t.string :title
      t.string :challenge
      t.string :video
      t.string :clip_id
      t.integer :trend_id
      t.timestamps
    end
  end
end
