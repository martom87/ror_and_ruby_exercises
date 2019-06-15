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

ActiveRecord::Schema.define(version: 2019_06_15_205738) do

  create_table "buildings", force: :cascade do |t|
    t.string "name"
    t.string "type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clans", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mercenaries", force: :cascade do |t|
    t.string "name"
    t.integer "experience"
    t.string "preferred_weapon_kind"
    t.datetime "available_from"
    t.integer "price"
    t.integer "warrior_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["warrior_id"], name: "index_mercenaries_on_warrior_id", unique: true
  end

  create_table "warriors", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.integer "battles_number", default: 0, null: false
    t.integer "armor", default: 0, null: false
    t.date "enrolled", null: false
    t.date "died"
    t.integer "clan_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "type", default: "Warriors::Samurai", null: false
    t.integer "buildings_id"
    t.string "preferred_weapon_kind"
    t.index ["buildings_id"], name: "index_warriors_on_buildings_id"
    t.index ["clan_id"], name: "index_warriors_on_clan_id"
    t.index ["name"], name: "index_warriors_on_name", unique: true, where: "died IS NULL"
  end

  create_table "weapons", force: :cascade do |t|
    t.integer "warrior_id"
    t.integer "range"
    t.integer "damage"
    t.string "kind"
    t.string "type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["warrior_id"], name: "index_weapons_on_warrior_id"
  end

end
