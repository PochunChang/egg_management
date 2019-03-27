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

ActiveRecord::Schema.define(version: 2019_03_26_081237) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "client_infos", force: :cascade do |t|
    t.string "industry"
    t.string "service_product"
    t.integer "product_count", default: 0
    t.integer "customer_count", default: 0
    t.integer "vendor_count", default: 0
    t.integer "vehicle_count", default: 0
    t.integer "driver_count", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "use_case_id"
    t.index ["use_case_id"], name: "index_client_infos_on_use_case_id"
  end

  create_table "db_infos", force: :cascade do |t|
    t.integer "db_info_no"
    t.string "serial_no"
    t.string "identification"
    t.string "ip"
    t.string "db_name"
    t.string "name"
    t.string "self"
    t.string "printer"
    t.string "backup"
    t.string "os"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "hard_info_id"
    t.index ["hard_info_id"], name: "index_db_infos_on_hard_info_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.bigint "user_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "destination"
    t.string "region"
    t.string "cost"
    t.string "schedule_type"
    t.string "markup"
    t.string "transportation"
    t.boolean "confirmed", default: true
    t.boolean "important", default: false
    t.boolean "rest", default: false
    t.boolean "done", default: false
    t.boolean "lightbulb", default: false
    t.boolean "triangle", default: false
    t.boolean "celebrate", default: false
    t.boolean "star", default: false
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "hard_infos", force: :cascade do |t|
    t.integer "denban"
    t.string "c_office"
    t.string "c_pic"
    t.text "c_address1"
    t.string "c_tel"
    t.string "c_fax"
    t.integer "connection_current"
    t.integer "connection_max"
    t.text "remark"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "introduction_date"
    t.string "time_passed"
    t.string "due_date"
    t.string "time_remaining"
    t.string "sales_person"
    t.string "delivery_person"
    t.string "superviser"
    t.string "project_person"
    t.string "program_person"
    t.integer "id_issued"
    t.integer "sc_count"
    t.string "remote"
    t.integer "supervision_count"
    t.string "hoshu"
    t.string "company_tel"
    t.integer "sales_no"
    t.integer "lookup_no"
    t.string "so_name"
    t.text "so_address1"
    t.string "so_pic"
    t.string "so_tel"
    t.string "so_fax"
    t.string "c_email"
    t.integer "use_case_no"
    t.string "client_name"
    t.string "product_name"
    t.string "mod"
    t.text "c_address2"
    t.text "c_address3"
    t.text "so_address2"
    t.text "so_address3"
    t.integer "use_case_identification"
    t.string "c_postal_code"
    t.string "tel"
  end

  create_table "posts", force: :cascade do |t|
    t.string "division"
    t.integer "number"
    t.string "date"
    t.string "client_name"
    t.string "product_name"
    t.string "mod"
    t.string "address"
    t.string "store"
    t.text "memo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sales_details", force: :cascade do |t|
    t.integer "sd_no"
    t.string "date"
    t.string "product_name"
    t.integer "sales_amount"
    t.integer "customize_cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "use_case_no"
  end

  create_table "use_case_ledgers", force: :cascade do |t|
    t.string "use_case_code"
    t.string "c_name"
    t.string "c_furigana"
    t.string "c_official_name"
    t.string "c_pic"
    t.string "c_rep"
    t.string "c_rep_role"
    t.string "c_rep_first_name"
    t.string "c_rep_last_name"
    t.string "c_office"
    t.string "c_postal_code"
    t.string "c_address1"
    t.string "c_address2"
    t.string "c_address3"
    t.string "c_tel"
    t.string "c_fax"
    t.string "c_homepage"
    t.string "c_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "use_case_id"
    t.bigint "hard_info_id"
    t.index ["hard_info_id"], name: "index_use_case_ledgers_on_hard_info_id"
    t.index ["use_case_id"], name: "index_use_case_ledgers_on_use_case_id"
  end

  create_table "use_cases", force: :cascade do |t|
    t.string "division"
    t.string "use_case_no"
    t.string "date"
    t.string "client_name"
    t.string "product_name"
    t.string "mod"
    t.string "province"
    t.string "store"
    t.text "memo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "introduction_date"
    t.string "time_passed"
    t.string "due_date"
    t.string "time_remaining"
    t.string "sales_person"
    t.string "delivery_person"
    t.string "superviser"
    t.string "project_person"
    t.string "program_person"
    t.integer "id_issued"
    t.integer "sc_count"
    t.string "tel"
    t.string "remote"
    t.integer "supervision_count"
    t.string "hoshu"
    t.string "c_pic"
    t.text "so_address1"
    t.string "sc_tel"
    t.integer "sales_no"
    t.integer "lookup_no"
    t.integer "project_no"
    t.string "industry", default: "不明"
    t.string "service_product"
    t.integer "product_count", default: 0
    t.integer "customer_count", default: 0
    t.integer "vendor_count", default: 0
    t.integer "vehicle_count", default: 0
    t.integer "driver_count", default: 0
    t.string "sc_name"
    t.string "so_tel"
    t.string "so_fax"
    t.string "so_name"
    t.string "remark"
    t.text "so_address2"
    t.text "so_address3"
    t.text "c_address1"
    t.text "c_address2"
    t.text "c_address3"
    t.string "so_pic"
    t.string "c_email"
    t.string "c_postal_code"
    t.string "c_tel"
    t.string "c_fax"
    t.string "c_office"
    t.integer "denban"
    t.string "use_case_code"
  end

  create_table "use_cases_hard_infos", id: false, force: :cascade do |t|
    t.bigint "use_case_id"
    t.bigint "hard_info_id"
    t.index ["hard_info_id"], name: "index_use_cases_hard_infos_on_hard_info_id"
    t.index ["use_case_id"], name: "index_use_cases_hard_infos_on_use_case_id"
  end

  create_table "use_cases_sales_details", id: false, force: :cascade do |t|
    t.bigint "use_case_id"
    t.bigint "sales_detail_id"
    t.index ["sales_detail_id"], name: "index_use_cases_sales_details_on_sales_detail_id"
    t.index ["use_case_id"], name: "index_use_cases_sales_details_on_use_case_id"
  end

  create_table "use_cases_works", id: false, force: :cascade do |t|
    t.bigint "use_case_id"
    t.bigint "work_id"
    t.index ["use_case_id"], name: "index_use_cases_works_on_use_case_id"
    t.index ["work_id"], name: "index_use_cases_works_on_work_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "user_code"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "works", force: :cascade do |t|
    t.string "work_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "date"
    t.time "time"
    t.string "client_name"
    t.string "classification"
    t.string "worker_name"
    t.string "kct"
    t.string "subject"
    t.text "content"
    t.string "use_case_no"
  end

  add_foreign_key "client_infos", "use_cases"
  add_foreign_key "db_infos", "hard_infos"
  add_foreign_key "use_case_ledgers", "hard_infos"
  add_foreign_key "use_case_ledgers", "use_cases"
end
