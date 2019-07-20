class AddUrlToTrends < ActiveRecord::Migration[5.2]
  def change
    add_column :trends, :url, :string
  end
end
