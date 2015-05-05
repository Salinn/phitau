class AddDeletedToMostTables < ActiveRecord::Migration
  def change
    add_column :alumni_eternal_stories, :deleted_at, :datetime
    add_index :alumni_eternal_stories, :deleted_at

    add_column :alumni_eternals, :deleted_at, :datetime
    add_index :alumni_eternals, :deleted_at

    add_column :alumni_news_letters, :deleted_at, :datetime
    add_index :alumni_news_letters, :deleted_at

    add_column :community_services, :deleted_at, :datetime
    add_index :community_services, :deleted_at

    add_column :composites, :deleted_at, :datetime
    add_index :composites, :deleted_at

    add_column :galleries, :deleted_at, :datetime
    add_index :galleries, :deleted_at

    add_column :images, :deleted_at, :datetime
    add_index :images, :deleted_at

    add_column :paddles, :deleted_at, :datetime
    add_index :paddles, :deleted_at

    add_column :positions, :deleted_at, :datetime
    add_index :positions, :deleted_at

    add_column :posts, :deleted_at, :datetime
    add_index :posts, :deleted_at

    add_column :receipts, :deleted_at, :datetime
    add_index :receipts, :deleted_at

    add_column :roles, :deleted_at, :datetime
    add_index :roles, :deleted_at

    add_column :text_messages, :deleted_at, :datetime
    add_index :text_messages, :deleted_at

    add_column :users, :deleted_at, :datetime
    add_index :users, :deleted_at
  end
end
