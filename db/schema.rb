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

ActiveRecord::Schema[7.1].define(version: 2024_02_01_142343) do
  create_table "authors", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "book_authors", force: :cascade do |t|
    t.integer "author_id"
    t.integer "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_book_authors_on_author_id"
    t.index ["book_id"], name: "index_book_authors_on_book_id"
  end

  create_table "book_issues", force: :cascade do |t|
    t.date "issue_date"
    t.date "return_date"
    t.integer "book_id"
    t.integer "member_id"
    t.integer "library_staff_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_book_issues_on_book_id"
    t.index ["library_staff_id"], name: "index_book_issues_on_library_staff_id"
    t.index ["member_id"], name: "index_book_issues_on_member_id"
  end

  create_table "book_requests", force: :cascade do |t|
    t.date "request_date"
    t.binary "available"
    t.date "nearest_available_date"
    t.integer "book_id"
    t.integer "member_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_book_requests_on_book_id"
    t.index ["member_id"], name: "index_book_requests_on_member_id"
  end

  create_table "books", force: :cascade do |t|
    t.text "title"
    t.text "category_name"
    t.integer "publisher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["publisher_id"], name: "index_books_on_publisher_id"
  end

  create_table "fine_payments", force: :cascade do |t|
    t.date "fine_due_date"
    t.date "payment_date"
    t.integer "payment_amount"
    t.integer "member_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id"], name: "index_fine_payments_on_member_id"
  end

  create_table "library_staffs", force: :cascade do |t|
    t.text "name"
    t.text "designation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "city"
    t.string "mobile_no"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "publishers", force: :cascade do |t|
    t.text "name"
    t.text "language"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "book_authors", "authors"
  add_foreign_key "book_authors", "books"
  add_foreign_key "book_issues", "books"
  add_foreign_key "book_issues", "library_staffs"
  add_foreign_key "book_issues", "members"
  add_foreign_key "book_requests", "books"
  add_foreign_key "book_requests", "members"
  add_foreign_key "books", "publishers"
  add_foreign_key "fine_payments", "members"
end
