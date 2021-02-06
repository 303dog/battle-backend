# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_04_235003) do

  create_table "fighters", force: :cascade do |t|
    t.integer "winner_id"
    t.integer "loser_id"
    t.integer "hero_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "heros", force: :cascade do |t|
    t.integer "hero_id"
    t.string "name"
    t.string "aka"
    t.string "alignment"
    t.integer "smarts"
    t.integer "muscle"
    t.integer "speed"
    t.integer "stamina"
    t.integer "power"
    t.integer "combat_skills"
    t.string "xsImg"
    t.string "smImg"
    t.string "mdImg"
    t.string "lgImg"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
