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
    t.integer "question_id"
    t.integer "choice_id"
    t.integer "song_id"
  end

  add_index "answers", ["choice_id"], name: "index_answers_on_choice_id"
  add_index "answers", ["question_id"], name: "index_answers_on_question_id"
  add_index "answers", ["song_id"], name: "index_answers_on_song_id"

  create_table "artists", force: :cascade do |t|
    t.string  "name"
    t.string  "song"
    t.integer "song_id"
  end

  add_index "artists", ["song_id"], name: "index_artists_on_song_id"

  create_table "choices", force: :cascade do |t|
    t.integer "question_id"
    t.integer "song_id"
    t.string  "text"
  end

  add_index "choices", ["question_id"], name: "index_choices_on_question_id"
  add_index "choices", ["song_id"], name: "index_choices_on_song_id"

  create_table "owners", force: :cascade do |t|
    t.integer "song_id"
    t.integer "artist_id"
  end

  add_index "owners", ["artist_id"], name: "index_owners_on_artist_id"
  add_index "owners", ["song_id"], name: "index_owners_on_song_id"

  create_table "questions", force: :cascade do |t|
    t.string  "text"
    t.integer "song_id"
    t.integer "artist_id"
  end

  add_index "questions", ["artist_id"], name: "index_questions_on_artist_id"
  add_index "questions", ["song_id"], name: "index_questions_on_song_id"

  create_table "reviews", force: :cascade do |t|
    t.integer "song_id"
    t.integer "user_id"
    t.integer "rating"
    t.text    "body"
  end

  add_index "reviews", ["song_id"], name: "index_reviews_on_song_id"
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id"

  create_table "songs", force: :cascade do |t|
    t.string  "name"
    t.string  "year_released"
    t.integer "artist_id"
  end

  add_index "songs", ["artist_id"], name: "index_songs_on_artist_id"

  create_table "users", force: :cascade do |t|
    t.string  "email"
    t.string  "name"
    t.integer "zip_code"
    t.string  "password_digest"
  end

end
