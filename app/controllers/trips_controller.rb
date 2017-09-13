class TripsController < ApplicationController
before_action :authorize
  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    if @trip.save
      @trip.users << current_user
      redirect_to user_path
    else
      render new_trip_path
    end
    flash[:notice] = "You have successfully created a new trip!"
  end

  def show
    @trip =Trip.find(params[:id])
    if @trip.users.include?(current_user)
    elsif Invitation.find_by(email: current_user.email, trip_id: @trip.id)
      @trip.users << current_user
    else
      redirect_to user_path
    end
    @messages   = Message.where(trip_id: @trip.id)
    @message    = Message.new
    @todo       = Todo.new
    @todos      = Todo.where(trip_id: @trip.id)
    @user       = @trip.users

  end

  def update
    @trip = Trip.find(params[:id])

    if @trip.update(trip_params)
      redirect_to trip_path(@trip.id)
    else
      render :edit
    end

    flash[:notice] = "Trip successfully updated!"
  end

  def invite_user
    @trip         = Trip.find(params[:trip_id])
    @guest_name   = params["name"]
    @email        = params["email"]
    @invitations = Invitation.new(trip: @trip ,email: @email)
    if @invitations.save
    UserInviteMailer.invite_email(@trip, @guest_name , @email).deliver_now
    end
    redirect_to trip_path(@trip.id)
  end


  def edit
    @trip = Trip.find(params[:id])
  end

  def destroy
    @trip = Trip.find(params[:id])
      @trip.destroy
      redirect_to user_path

      flash[:notice] = "Trip has been successfully deleted!"
  end


private

def trip_params
  params.require(:trip).permit(:name, :park_id, :booked, :start_date, :end_date)
end


end
