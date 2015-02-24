class AddHoursToCommunityService < ActiveRecord::Migration
  def change
    add_column :community_services, :hours_volunteered, :integer
  end
end
