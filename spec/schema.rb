ActiveRecord::Schema.define do

  self.verbose = false

  create_table "bastards", force: :cascade do |t|
    t.string   "name"
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "children", force: :cascade do |t|
    t.string   "name"
    t.integer  "parent_id"
    t.integer  "draft_id"
    t.datetime "trashed_at"
    t.datetime "published_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "draft_as_sketches", force: :cascade do |t|
    t.string   "name"
    t.integer  "sketch_id"
    t.datetime "published_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "drafts", force: :cascade do |t|
    t.string   "item_type"
    t.integer  "item_id"
    t.string   "event",          null: false
    t.string   "whodunnit"
    t.text     "object"
    t.text     "object_changes"
    t.text     "previous_draft"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "answer"
    t.string   "ip"
    t.string   "user_agent"
  end

  create_table "only_children", force: :cascade do |t|
    t.string   "name"
    t.integer  "parent_id"
    t.integer  "draft_id"
    t.datetime "trashed_at"
    t.datetime "published_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parents", force: :cascade do |t|
    t.string   "name"
    t.integer  "draft_id"
    t.datetime "trashed_at"
    t.datetime "published_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skippers", force: :cascade do |t|
    t.string   "name"
    t.string   "skip_me"
    t.integer  "draft_id"
    t.datetime "trashed_at"
    t.datetime "published_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trashables", force: :cascade do |t|
    t.string   "name"
    t.string   "title"
    t.integer  "draft_id"
    t.datetime "published_at"
    t.datetime "trashed_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vanillas", force: :cascade do |t|
    t.string   "name"
    t.integer  "draft_id"
    t.datetime "published_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "whitelisters", force: :cascade do |t|
    t.string   "name"
    t.string   "ignored"
    t.integer  "draft_id"
    t.datetime "published_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
