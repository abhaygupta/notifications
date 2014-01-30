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

ActiveRecord::Schema.define(:version => 2) do

  create_table "customer_notifications", :force => true do |t|
    t.integer  "customer_id",             :null => false
    t.integer  "notification_message_id", :null => false
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "customer_notifications", ["customer_id"], :name => "index_customer_notifications_on_customer_id"
  add_index "customer_notifications", ["notification_message_id"], :name => "index_customer_notifications_on_notification_message_id"

  create_table "notification_messages", :force => true do |t|
    t.string   "notification_type", :limit => 100, :null => false
    t.integer  "priority"
    t.string   "status",            :limit => 20,  :null => false
    t.string   "contentType",       :limit => 100
    t.text     "message"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  add_index "notification_messages", ["notification_type"], :name => "index_notification_messages_on_notification_type"

end
