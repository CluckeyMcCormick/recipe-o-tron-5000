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
    t.integer  "mod_pack_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "input_quantities", ["item_id"], name: "index_input_quantities_on_item_id"
  add_index "input_quantities", ["mod_pack_id"], name: "index_input_quantities_on_mod_pack_id"
  add_index "input_quantities", ["recipe_id"], name: "index_input_quantities_on_recipe_id"

  create_table "item_classes", force: :cascade do |t|
    t.string   "name"
    t.integer  "mod_pack_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "item_classes", ["mod_pack_id"], name: "index_item_classes_on_mod_pack_id"

  create_table "item_classes_items", id: false, force: :cascade do |t|
    t.integer "item_class_id", null: false
    t.integer "item_id",       null: false
  end

  create_table "item_classes_process_types", id: false, force: :cascade do |t|
    t.integer "process_type_id", null: false
    t.integer "item_class_id",   null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.boolean  "basic_item"
    t.integer  "mod_id"
    t.integer  "mod_pack_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "items", ["mod_id"], name: "index_items_on_mod_id"
  add_index "items", ["mod_pack_id"], name: "index_items_on_mod_pack_id"

  create_table "mod_packs", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mods", force: :cascade do |t|
    t.string   "name"
    t.integer  "mod_pack_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "mods", ["mod_pack_id"], name: "index_mods_on_mod_pack_id"

  create_table "output_quantities", force: :cascade do |t|
    t.integer  "count"
    t.integer  "recipe_id"
    t.integer  "item_id"
    t.integer  "mod_pack_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "output_quantities", ["item_id"], name: "index_output_quantities_on_item_id"
  add_index "output_quantities", ["mod_pack_id"], name: "index_output_quantities_on_mod_pack_id"
  add_index "output_quantities", ["recipe_id"], name: "index_output_quantities_on_recipe_id"

  create_table "process_types", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "mod_pack_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "process_types", ["mod_pack_id"], name: "index_process_types_on_mod_pack_id"

  create_table "recipes", force: :cascade do |t|
    t.boolean  "preferred_recipe"
    t.integer  "process_type_id"
    t.integer  "mod_pack_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "recipes", ["mod_pack_id"], name: "index_recipes_on_mod_pack_id"
  add_index "recipes", ["process_type_id"], name: "index_recipes_on_process_type_id"

end
