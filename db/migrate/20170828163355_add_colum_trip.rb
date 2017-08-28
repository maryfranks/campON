class AddColumTrip < ActiveRecord::Migration[5.1]
  def change
    add_column :trips, :bokked_trip, :boolean
  end
end
