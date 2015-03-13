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

ActiveRecord::Schema.define(version: 0) do

  create_table "answers", force: :cascade do |t|
    t.string  "text"
    t.integer "survey_id"
    t.integer "user_id"
    t.integer "question_id"
  end

  add_index "answers", ["question_id"], name: "index_answers_on_question_id"
  add_index "answers", ["survey_id"], name: "index_answers_on_survey_id"
  add_index "answers", ["user_id"], name: "index_answers_on_user_id"

  create_table "artists", force: :cascade do |t|
    t.string "name"
  end

  create_table "questions", force: :cascade do |t|
    t.string  "text"
    t.integer "song_id"
    t.integer "survey_id"
  end

  add_index "questions", ["song_id"], name: "index_questions_on_song_id"
  add_index "questions", ["survey_id"], name: "index_questions_on_survey_id"

  create_table "songs", force: :cascade do |t|
    t.string  "name"
    t.string  "year_released"
    t.integer "artist_id"
    t.string  "survey"
    t.string  "question"
    t.string  "image"
  end

  add_index "songs", ["artist_id"], name: "index_songs_on_artist_id"

  create_table "surveys", force: :cascade do |t|
    t.string  "name"
    t.integer "song_id"
    t.string  "rating"
    t.integer "user_id"
  end

  add_index "surveys", ["song_id"], name: "index_surveys_on_song_id"
  add_index "surveys", ["user_id"], name: "index_surveys_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.string "password_digest"
  end

end
