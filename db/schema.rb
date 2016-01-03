# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151213073816) do

  create_table "input_quantities", force: :cascade do |t|
    t.integer  "count"
    t.integer  "recipe_id"
    t.integer  "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "input_quantities", ["item_id"], name: "index_input_quantities_on_item_id"
  add_index "input_quantities", ["recipe_id"], name: "index_input_quantities_on_recipe_id"

  create_table "input_quantities_mod_packs", id: false, force: :cascade do |t|
    t.integer "mod_pack_id",       null: false
    t.integer "input_quantity_id", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.integer  "mod_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "items", ["mod_id"], name: "index_items_on_mod_id"

  create_table "items_mod_packs", id: false, force: :cascade do |t|
    t.integer "mod_pack_id", null: false
    t.integer "item_id",     null: false
  end

  create_table "mod_packs", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mod_packs_mods", id: false, force: :cascade do |t|
    t.integer "mod_pack_id", null: false
    t.integer "mod_id",      null: false
  end

  create_table "mod_packs_output_quantities", id: false, force: :cascade do |t|
    t.integer "mod_pack_id",        null: false
    t.integer "output_quantity_id", null: false
  end

  create_table "mod_packs_recipes", id: false, force: :cascade do |t|
    t.integer "mod_pack_id", null: false
    t.integer "recipe_id",   null: false
  end

  create_table "mods", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "output_quantities", force: :cascade do |t|
    t.integer  "count"
    t.integer  "probability"
    t.integer  "output_group"
    t.integer  "recipe_id"
    t.integer  "item_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "output_quantities", ["item_id"], name: "index_output_quantities_on_item_id"
  add_index "output_quantities", ["recipe_id"], name: "index_output_quantities_on_recipe_id"

  create_table "recipes", force: :cascade do |t|
    t.integer  "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
