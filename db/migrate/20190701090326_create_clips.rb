class CreateClips < ActiveRecord::Migration[5.2]
  def change
    create_table :clips do |t|
      t.integer :user_id
      t.string :video
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
