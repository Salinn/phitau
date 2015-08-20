class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.belongs_to :rush_interview, index: true
      t.string :bid_given

      t.timestamps
    end
  end
end
