class TripsController < ApplicationController

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)

    if @trip.save
      @trip.users << current_user
      redirect_to parks_path
    else
      render new_trip_path
    end

    flash[:notice] = "You have successfully created a new trip!"

  end

  def update
    @trip = Trip.find(params[:id])

    if @trip.update(trip_params)
      redirect_to parks_path
    else
      render :edit
    end

    flash[:notice] = "Trip successfully updated!"
  end

  def edit
    @trip = Trip.find(params[:id])
  end

  def destroy
  end

private

def trip_params
  params.require(:trip).permit(:name, :park_id, :booked, :start_date, :end_date)
end

end
