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

ActiveRecord::Schema.define(version: 20150218213508) do

  create_table "degrees", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.string   "concentration", limit: 255
    t.integer  "education_id",  limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "degree_type",   limit: 255
  end

  create_table "educations", force: :cascade do |t|
    t.string   "school_name", limit: 255
    t.integer  "graduate_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "employers", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.text     "photo",        limit: 65535
    t.text     "bio",          limit: 65535
    t.string   "industry",     limit: 255
    t.date     "date_founded"
    t.string   "email",        limit: 255
    t.integer  "size",         limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "experiences", force: :cascade do |t|
    t.string   "company",     limit: 255
    t.text     "description", limit: 65535
    t.string   "position",    limit: 255
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "graduate_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "graduate_skills", force: :cascade do |t|
    t.integer  "graduate_id", limit: 4
    t.integer  "skill_id",    limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "graduates", force: :cascade do |t|
    t.text     "photo",         limit: 65535
    t.text     "bio",           limit: 65535
    t.string   "current_city",  limit: 255
    t.string   "current_state", limit: 255
    t.string   "grad_city",     limit: 255
    t.string   "grad_state",    limit: 255
    t.string   "email",         limit: 255
    t.date     "grad_date"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "first_name",    limit: 255
    t.string   "last_name",     limit: 255
  end

  create_table "links", force: :cascade do |t|
    t.text     "url",         limit: 65535
    t.text     "description", limit: 65535
    t.integer  "graduate_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "postings", force: :cascade do |t|
    t.integer  "employer_id",     limit: 4
    t.string   "job_title",       limit: 255
    t.date     "job_post_date"
    t.text     "job_description", limit: 65535
    t.text     "job_requirement", limit: 65535
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "city",            limit: 255
    t.string   "state",           limit: 255
  end

  create_table "skills", force: :cascade do |t|
    t.string   "skill",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
