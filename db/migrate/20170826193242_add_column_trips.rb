class AddColumnTrips < ActiveRecord::Migration[5.1]
  def change
    add_column :trips, :start_date, :string
    add_column :trips, :end_date, :string
    add_column :trips, :trip_name, :string
  end
end
