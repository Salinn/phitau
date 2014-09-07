class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string   "title"
      t.string   "author"
      t.text     "content"
      t.boolean  "published"
      t.datetime "created_at", :null => false
      t.datetime "updated_at", :null => false
      t.timestamps
    end
  end
end
