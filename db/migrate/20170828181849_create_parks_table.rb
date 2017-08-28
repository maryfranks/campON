class CreateParksTable < ActiveRecord::Migration[5.1]
  def change
    create_table :parks do |t|
      t.string :name
      t.string :url
      t.boolean :backcountry_cabin, default: false
      t.boolean :backcountry_camping, default: false
      t.boolean :barrier_free, default: false
      t.boolean :biking, default: false
      t.boolean :birding, default: false
      t.boolean :boating, default: false
      t.boolean :boat_launch, default: false
      t.boolean :canoeing, default: false
      t.boolean :car_camping, default: false
      t.boolean :comfort_station, default: false
      t.boolean :cottage, default: false
      t.boolean :camp_cabin, default: false
      t.boolean :day_use, default: false
      t.boolean :dog_free_camping, default: false
      t.boolean :fishing, default: false
      t.boolean :flush_toilets, default: false
      t.boolean :group_camping, default: false
      t.boolean :hiking, default: false
      t.boolean :hunting, default: false
      t.boolean :laundromat, default: false
      t.boolean :natural_heritage_education, default: false
      t.boolean :park_store, default: false
      t.boolean :pet_exercise_area, default: false
      t.boolean :picnic_shelters, default: false
      t.boolean :radio_free_camping, default: false
      t.boolean :rentals, default: false
      t.boolean :roofed_accommodation, default: false
      t.boolean :swimming, default: false
      t.boolean :trailer_storage, default: false
      t.boolean :visitor_centre, default: false
      t.boolean :walk_in_camping, default: false
      t.boolean :winter_activities, default: false
      t.boolean :yurt, default: false
    end
  end
end
