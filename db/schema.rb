# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180224000815) do

  create_table "pitchers", force: :cascade do |t|
    t.integer "masterplayerid"
    t.string "lname"
    t.string "fname"
    t.string "franchise"
    t.string "league"
    t.integer "splitseasonid"
    t.string "bats"
    t.string "throws"
    t.integer "ip_162"
    t.decimal "era"
    t.decimal "erc"
    t.decimal "oav"
    t.decimal "whip"
    t.integer "k"
    t.decimal "hr9"
    t.integer "bb"
    t.decimal "era_norm"
    t.decimal "erc_norm"
    t.decimal "oav_norm"
    t.decimal "whip_norm"
    t.decimal "hr_norm"
    t.decimal "bb_norm"
    t.decimal "k9_norm"
    t.string "fieldinggrades_p"
    t.boolean "firstseason"
    t.boolean "lastseason"
    t.integer "basesalary"
    t.integer "salary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "season"
  end

end
