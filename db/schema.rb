# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_10_08_211310) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pokemons", force: :cascade do |t|
    t.string "name"
    t.string "pokemon_type"
    t.string "moves"
    t.string "abilities"
    t.string "national_pokedex_num"
    t.bigint "team_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["team_id"], name: "index_pokemons_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "leader"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "pokemons", "teams"
end