class AddDefaultValueForBookedTrips < ActiveRecord::Migration[5.1]
  def change
    change_column :trips, :booked, :boolean, default: false 
  end
end
