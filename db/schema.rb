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

ActiveRecord::Schema.define(version: 20170205014502) do

  create_table "anuncios", force: :cascade do |t|
    t.integer  "car_id"
    t.integer  "street_id"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_anuncios_on_car_id"
    t.index ["street_id"], name: "index_anuncios_on_street_id"
  end

  create_table "bootsy_image_galleries", force: :cascade do |t|
    t.string   "bootsy_resource_type"
    t.integer  "bootsy_resource_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bootsy_images", force: :cascade do |t|
    t.string   "image_file"
    t.integer  "image_gallery_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cars", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.integer  "permission_level",       default: 1
    t.string   "username"
    t.index ["email"], name: "index_cars_on_email", unique: true
    t.index ["reset_password_token"], name: "index_cars_on_reset_password_token", unique: true
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.string   "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comentarios", force: :cascade do |t|
    t.integer  "car_id"
    t.integer  "street_id"
    t.string   "body"
    t.string   "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_comentarios_on_car_id"
    t.index ["street_id"], name: "index_comentarios_on_street_id"
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "car_id"
    t.integer  "street_id"
    t.string   "body"
    t.string   "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_comments_on_car_id"
    t.index ["street_id"], name: "index_comments_on_street_id"
  end

  create_table "has_categories", force: :cascade do |t|
    t.integer  "street_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["category_id"], name: "index_has_categories_on_category_id"
    t.index ["street_id"], name: "index_has_categories_on_street_id"
  end

  create_table "streets", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "views"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.integer  "car_id"
    t.string   "cover_file_name"
    t.string   "cover_content_type"
    t.integer  "cover_file_size"
    t.datetime "cover_updated_at"
    t.string   "state",              default: "in_draft"
    t.text     "bio"
    t.index ["car_id"], name: "index_streets_on_car_id"
  end

end
