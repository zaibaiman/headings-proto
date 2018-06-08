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

ActiveRecord::Schema.define(:version => 20180607222636) do

  create_table "headings", :force => true do |t|
    t.string   "meta_title"
    t.string   "meta_description"
    t.string   "heading"
    t.string   "subtitle"
    t.string   "image"
    t.string   "video"
    t.string   "solid_color"
    t.string   "slab1_color"
    t.float    "slab1_opacity"
    t.string   "slab1_txt_color"
    t.float    "slab1_txt_opacity"
    t.string   "slab1_txt_roll_color"
    t.float    "slab1_txt_roll_opacity"
    t.string   "slab1_txt_sel_color"
    t.float    "slab1_txt_sel_opacity"
    t.string   "slab2_color"
    t.float    "slab2_opacity"
    t.string   "slab2_txt_color"
    t.float    "slab2_txt_opacity"
    t.string   "slab2_txt_roll_color"
    t.float    "slab2_txt_roll_opacity"
    t.string   "slab2_txt_sel_color"
    t.float    "slab2_txt_sel_opacity"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

end
