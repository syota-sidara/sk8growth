class AddTrickIdToClips < ActiveRecord::Migration[5.2]
  def change
    add_column :clips, :trick_id, :integer
  end
end
