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

ActiveRecord::Schema.define(version: 2022_09_07_214725) do

  create_table "candidates", force: :cascade do |t|
    t.string "name"
    t.string "party_name"
  end

  create_table "voters", force: :cascade do |t|
    t.string "name"
    t.string "age"
    t.string "county"
    t.string "gender"
  end

  create_table "votes", force: :cascade do |t|
    t.string "voters_id"
    t.string "candidate_id"
  end

end