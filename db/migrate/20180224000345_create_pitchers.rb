class CreatePitchers < ActiveRecord::Migration[5.1]
  def change
    create_table :pitchers do |t|
      t.integer :masterplayerid
      t.string :lname
      t.string :fname
      t.string :franchise
      t.string :league
      t.integer :splitseasonid
      t.string :bats
      t.string :throws
      t.integer :ip_162
      t.decimal :era
      t.decimal :erc
      t.decimal :oav
      t.decimal :whip
      t.integer :k
      t.decimal :hr9
      t.integer :bb
      t.decimal :era_norm
      t.decimal :erc_norm
      t.decimal :oav_norm
      t.decimal :whip_norm
      t.decimal :hr_norm
      t.decimal :bb_norm
      t.decimal :k9_norm
      t.string :fieldinggrades_p
      t.boolean :firstseason
      t.boolean :lastseason
      t.integer :basesalary
      t.integer :salary

      t.timestamps
    end
  end
end
