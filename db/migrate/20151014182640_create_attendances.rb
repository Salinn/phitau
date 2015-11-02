class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.belongs_to :event, index: true
      t.boolean :deleted_at
      t.string :excuse
      t.timestamps
    end
  end
end
