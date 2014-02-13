class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.integer  "book_id"
      t.integer  "user_id"
      t.string   "title"
      t.string   "description"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.timestamps
    end
  end
end
