class AddCommentToTrends < ActiveRecord::Migration[5.2]
  def change
    add_column :trends, :comment, :text
  end
end
