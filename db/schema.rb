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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131007214551) do

  create_table "answers", :force => true do |t|
    t.integer  "question_id", :null => false
    t.integer  "user_id",     :null => false
    t.text     "response",    :null => false
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "answers", ["question_id"], :name => "index_answers_on_question_id"
  add_index "answers", ["user_id", "question_id"], :name => "index_answers_on_user_id_and_question_id"
  add_index "answers", ["user_id"], :name => "index_answers_on_user_id"

  create_table "follow_questions", :force => true do |t|
    t.integer  "user_id",     :null => false
    t.integer  "question_id", :null => false
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "follow_questions", ["question_id"], :name => "index_follow_questions_on_question_id"
  add_index "follow_questions", ["user_id", "question_id"], :name => "index_follow_questions_on_user_id_and_question_id"
  add_index "follow_questions", ["user_id"], :name => "index_follow_questions_on_user_id"

  create_table "follow_users", :force => true do |t|
    t.integer  "is_followed_id", :null => false
    t.integer  "follower_id",    :null => false
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "follow_users", ["follower_id"], :name => "index_follow_users_on_follower_id"
  add_index "follow_users", ["is_followed_id", "follower_id"], :name => "index_follow_users_on_is_followed_id_and_follower_id"
  add_index "follow_users", ["is_followed_id"], :name => "index_follow_users_on_is_followed_id"

  create_table "questions", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.string   "title",      :null => false
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "slug"
  end

  add_index "questions", ["slug"], :name => "index_questions_on_slug", :unique => true
  add_index "questions", ["user_id"], :name => "index_questions_on_user_id"

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id",      :null => false
    t.integer  "question_id", :null => false
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "taggings", ["question_id"], :name => "index_taggings_on_question_id"
  add_index "taggings", ["tag_id", "question_id"], :name => "index_taggings_on_tag_id_and_question_id"
  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"

  create_table "tags", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",           :null => false
    t.string   "password_digest", :null => false
    t.string   "name"
    t.string   "session_token",   :null => false
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "users", ["session_token"], :name => "index_users_on_session_token"

end
