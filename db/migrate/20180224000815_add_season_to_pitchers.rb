class AddSeasonToPitchers < ActiveRecord::Migration[5.1]
  def change
    add_column :pitchers, :season, :integer
  end
end
