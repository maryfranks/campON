class TripsController < ApplicationController

  def new
    @trip = Trip.new
    @parks = Park.all 
  end

  def create
  end

  def update
  end

  def destroy
  end

private

def trip_params
end

end
