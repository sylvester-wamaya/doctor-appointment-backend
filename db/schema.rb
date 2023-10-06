ActiveRecord::Schema[7.0].define(version: 2023_10_06_063330) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.bigint "doctor_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "location"
    t.date "date"
    t.index ["doctor_id"], name: "index_appointments_on_doctor_id"
    t.index ["user_id"], name: "index_appointments_on_user_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "name"
    t.string "specialization"
    t.integer "consultation_fee"
    t.integer "prescription_fee"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.index ["user_id"], name: "index_doctors_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "appointments", "doctors"
  add_foreign_key "appointments", "users"
  add_foreign_key "doctors", "users"
end
