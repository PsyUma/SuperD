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

ActiveRecord::Schema.define(version: 20171009035427) do

  create_table "Category", primary_key: "CatId", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text "CatName", limit: 4294967295, null: false
  end

  create_table "Company", primary_key: "CompanyId", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text "CompanyName", limit: 4294967295, null: false
  end

  create_table "Country", primary_key: "CountryId", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "CountryName", limit: 50, null: false
    t.string "Continent", limit: 50, null: false
    t.string "Region", limit: 50, null: false
  end

  create_table "Date", primary_key: "DateId", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "MonthNumber", null: false
    t.string "MonthName", limit: 50, null: false
    t.integer "Year", null: false
    t.integer "Quarter", null: false
    t.date "Date"
  end

  create_table "Images", primary_key: "ImageId", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.binary "Image", limit: 4294967295, null: false
    t.integer "UserId", null: false
    t.datetime "CreatedDate", precision: 3, null: false
    t.integer "DateId"
    t.index ["DateId"], name: "DateId"
    t.index ["UserId"], name: "UserId"
  end

  create_table "SuperDBlog", primary_key: "BlogId", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text "BlogText", limit: 4294967295, null: false
    t.integer "UserId", null: false
    t.integer "ImageID"
    t.integer "VideoId"
    t.datetime "CreatedDate", precision: 3, null: false
    t.integer "DateId"
    t.index ["DateId"], name: "DateId"
    t.index ["ImageID"], name: "ImageID"
    t.index ["UserId"], name: "UserId"
    t.index ["VideoId"], name: "VideoId"
  end

  create_table "SuperDUser", primary_key: "UserId", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "CreatedDate", precision: 3, null: false
    t.datetime "PasswordModDate", precision: 3
    t.string "email", limit: 50
    t.string "phone", limit: 10
    t.string "firstname", limit: 50
    t.text "address", limit: 4294967295
    t.text "country", limit: 4294967295
    t.text "lastname", limit: 4294967295
    t.integer "DateId"
    t.integer "countryid"
    t.index ["DateId"], name: "F1"
    t.index ["countryid"], name: "countryid"
  end

  create_table "UserActivityInterest", primary_key: "Id", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "UserId", null: false
    t.datetime "LastLogin", precision: 3, null: false
    t.integer "DownloadedTutorials", limit: 1, null: false
    t.integer "DownloadedApp", limit: 1, null: false
    t.integer "NumberOfModelsUploaded", null: false
    t.integer "IsSubscribed", limit: 1, null: false
    t.integer "DateId"
    t.index ["DateId"], name: "DateId"
    t.index ["UserId"], name: "UserId"
  end

  create_table "Video", primary_key: "VideoId", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.binary "Video", limit: 4294967295, null: false
    t.integer "UserId", null: false
    t.datetime "CreatedDate", precision: 3, null: false
    t.integer "DateId"
    t.index ["DateId"], name: "DateId"
  end

  create_table "super_d_users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "PasswordModDate"
    t.string "email"
    t.string "phone"
    t.string "firstname"
    t.text "address"
    t.text "country"
    t.text "lastname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "password"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "Images", "Date", column: "DateId", primary_key: "DateId", name: "Images_ibfk_1"
  add_foreign_key "Images", "SuperDUser", column: "UserId", primary_key: "UserId", name: "Images_ibfk_2"
  add_foreign_key "SuperDBlog", "Date", column: "DateId", primary_key: "DateId", name: "SuperDBlog_ibfk_1"
  add_foreign_key "SuperDBlog", "Images", column: "ImageID", primary_key: "ImageId", name: "SuperDBlog_ibfk_2"
  add_foreign_key "SuperDBlog", "SuperDUser", column: "UserId", primary_key: "UserId", name: "SuperDBlog_ibfk_3"
  add_foreign_key "SuperDBlog", "Video", column: "VideoId", primary_key: "VideoId", name: "SuperDBlog_ibfk_4"
  add_foreign_key "SuperDUser", "Country", column: "countryid", primary_key: "CountryId", name: "SuperDUser_ibfk_1"
  add_foreign_key "SuperDUser", "Date", column: "DateId", primary_key: "DateId", name: "F1"
  add_foreign_key "UserActivityInterest", "Date", column: "DateId", primary_key: "DateId", name: "UserActivityInterest_ibfk_1"
  add_foreign_key "UserActivityInterest", "SuperDUser", column: "UserId", primary_key: "UserId", name: "UserActivityInterest_ibfk_2"
  add_foreign_key "Video", "Date", column: "DateId", primary_key: "DateId", name: "Video_ibfk_1"
end
