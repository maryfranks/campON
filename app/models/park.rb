class Park < ApplicationRecord

  has_many :trips

  def self.activity_list
      return ['biking', 'birding', 'boating', 'canoeing', 'fishing', 'hiking', 'hunting', 'swimming']
  end

  def self.facilities_list
        return ['backcountry_cabin','backcountry_camping','backcountry_cabin','barrier_free','boat_launch','car_camping','comfort_station','cottage','camp_cabin','day_use','dog_free_camping','flush_toilets','group_camping','laundromat','natural_heritage_education','park_store','pet_exercise_area','picnic_shelters','radio_free_camping','rentals','roofed_accommodation','trailer_storage','visitor_centre','walk_in_camping','winter_activities','yurt','trailer_equipped_campsite','rustic_cabin','soft_sided_shelter','winter_camping','shuttle_service','Parking','lodge','seasonal_campsite_program']
  end

  def self.facilities_view
    facilities_list.map do |facility|
      str = facility
      str.downcase.tr("_", " ")
    end
  end

def activities
  a = []

  self.attributes.each do |k, v|
    if v == true && Park.activity_list.include?(k)
      a << k
    end
  end
  return a

end

def facilities
  f = []

  self.attributes.each do |k, v|
    if v == true && Park.facilities_list.include?(k)
      f << k
    end
  end
  return f.map do |k|
    str = k
    k.downcase.tr("_", " ")
end
end   
end
