class CreateStandardsBoards < ActiveRecord::Migration
  def change
    create_table :standards_boards do |t|
      t.belongs_to :user, index: true
      t.text :reason
      t.belongs_to :position, index: true

      t.timestamps
    end
  end
end
