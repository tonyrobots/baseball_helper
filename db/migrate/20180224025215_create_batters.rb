class CreateBatters < ActiveRecord::Migration[5.1]
  def change
    create_table :batters do |t|
      t.integer :masterplayerid
      t.integer :season
      t.string :lname
      t.string :fname
      t.string :position
      t.string :franchise
      t.string :league
      t.integer :splitseasonid
      t.string :bats
      t.string :throws
      t.integer :pa_162
      t.integer :ab_162
      t.decimal :ba
      t.decimal :opb
      t.decimal :slg
      t.integer :hits
      t.integer :bb
      t.integer :sb
      t.decimal :ba_norm
      t.decimal :obp_norm
      t.decimal :slg_norm
      t.decimal :ops_norm
      t.integer :speedrating
      t.string :fieldinggrades
      t.string :fieldinggrades_p
      t.string :fieldinggrades_c
      t.string :fieldinggrades_1b
      t.string :fieldinggrades_2b
      t.string :fieldinggrades_3b
      t.string :fieldinggrades_ss
      t.string :fieldinggrades_of
      t.boolean :firstseason
      t.boolean :lastseason
      t.integer :basesalary
      t.integer :salary

      t.timestamps
    end
  end
end
