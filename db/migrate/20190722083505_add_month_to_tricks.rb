class AddMonthToTricks < ActiveRecord::Migration[5.2]
  def change
    add_column :tricks, :month, :integer
  end
end
