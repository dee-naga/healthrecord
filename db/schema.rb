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

ActiveRecord::Schema.define(version: 2019_01_26_001802) do

  create_table "body_compositions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_as_ci", force: :cascade do |t|
    t.timestamp "date", comment: "日時"
    t.decimal "waist", precision: 5, scale: 2, comment: "ウエスト(cm)"
    t.decimal "weight", precision: 5, scale: 2, comment: "体重(kg)"
    t.decimal "body_fat", precision: 5, scale: 2, comment: "体脂肪率(%)"
    t.decimal "fat_by_kg", precision: 5, scale: 2, comment: "体脂肪量(kg)"
    t.decimal "lbm", precision: 5, scale: 2, comment: "除脂肪体重(kg)"
    t.decimal "bmi", precision: 5, scale: 2, comment: "BMI"
    t.decimal "basal_metabolism", precision: 6, scale: 2, comment: "基礎代謝"
    t.decimal "physical_age", precision: 5, scale: 2, comment: "身体年齢(歳)"
    t.decimal "skeletal_muscle_level", precision: 5, scale: 2, comment: "骨格筋レベル"
    t.decimal "bone_level", precision: 5, scale: 2, comment: "骨レベル"
    t.decimal "visceral_fat_level", precision: 5, scale: 2, comment: "内臓脂肪レベル"
    t.decimal "water_content", precision: 5, scale: 2, comment: "水分量 (%)"
    t.text "memo", comment: "メモ"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
