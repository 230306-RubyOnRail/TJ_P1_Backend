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

ActiveRecord::Schema[7.0].define(version: 2023_04_06_185409) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "reimbursements", force: :cascade do |t|
    t.integer "reimbursement_id"
    t.string "title"
    t.string "description"
    t.boolean "approved"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["reimbursement_id"], name: "index_reimbursements_on_reimbursement_id", unique: true
  end

  create_table "tokens", force: :cascade do |t|
    t.integer "token_id"
    t.string "token"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["token_id"], name: "index_tokens_on_token_id", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.integer "user_id"
    t.string "username"
    t.string "password"
    t.boolean "manager"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_users_on_user_id", unique: true
  end

end