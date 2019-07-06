class AddSecondbodyToTrends < ActiveRecord::Migration[5.2]
  def change
    add_column :trends, :secondbody, :text
  end
end
