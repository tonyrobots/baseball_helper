class ChangeColumnNameFromOpbToObp < ActiveRecord::Migration[5.1]
  def change
    rename_column :batters, :opb, :obp
  end
end
