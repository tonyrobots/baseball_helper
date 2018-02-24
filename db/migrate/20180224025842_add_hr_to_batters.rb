class AddHrToBatters < ActiveRecord::Migration[5.1]
  def change
    add_column :batters, :hr, :integer
  end
end
