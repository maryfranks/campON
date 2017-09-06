class ParksController < ApplicationController

  def index
    @parks = Park.all.sort_by{ |park| park.name}
  end

  def show
    @parks = Park.find(params[:id])
  end

  def search
      @parks = Park.where(searchparams)
      render partial: 'parkList'
  end

  private
  def searchparams
    params.require(:data).permit(:biking,:birding,:boating,:canoeing,:fishing,:hiking,:hunting,:swimming,:backcountry_cabin,:backcountry_camping,:backcountry_cabin,:barrier_free,:boat_launch,:car_camping,:comfort_station,:cottage,:camp_cabin,:day_use,:dog_free_camping,:flush_toilets,:group_camping,:laundromat,:natural_heritage_education,:park_store,:pet_exercise_area,:picnic_shelters,:radio_free_camping,:rentals,:roofed_accommodation,:trailer_storage,:visitor_centre,:walk_in_camping,:winter_activities,:yurt,:trailer_equipped_campsite,:rustic_cabin,:soft_sided_shelter,:winter_camping,:shuttle_service,:parking,:lodge, :seasonal_campsite_program)
  end

end
