class UserPositions < ActiveRecord::Migration
  def change
    create_table :user_positions do |t|
      t.belongs_to :user
      t.belongs_to :position
    end
  end
end
