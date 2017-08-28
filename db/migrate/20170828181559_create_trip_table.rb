class CreateTripTable < ActiveRecord::Migration[5.1]
  def change
    create_table :trips do |t|
      t.string :name
      t.boolean :booked
      t.integer :park_id
      t.date :start_date
      t.date :end_date
      t.timestamp
    end
  end
end
