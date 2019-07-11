class RenameVideoIdColumnToComments < ActiveRecord::Migration[5.2]
  def change
  	rename_column :comments, :video_id, :clip_id
  end
end
