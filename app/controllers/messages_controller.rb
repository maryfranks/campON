class MessagesController < ApplicationController

  def current_trip
    @trip =Trip.find(params[:id])
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new
    @message.user_id = current_user.id
    @message.trip_id = params[:trip_id]
    @message.message = params[:message][:message]

    if @message.save
      flash[:success] = "Message successfully added"
      redirect_to "/trips/#{params[:trip_id]}"

    end

    def search
      @messages = Message.where(search_params)
      render partial: 'message_display'
    end
  end
    #
    # def update
    #   @message = Message.find(params[:id])
    #   trip_id = params[:trip_id]
    #   @trip = Trip.find(trip_id)
    #   @messages = @messages.message
    #
    #   @message.message = params[:message][:trip]
    #   @message.trip_id = trip_id
    #
    #   if @message.save
    #     redirect_to trip_path
    #   else
    #     render 'trips/show'
    #   end
    # end
    #
    # def destroy
    #   @message = Message.find(params[:id])
    #   @message.destroy
    #   redirect_to trip_path
    #   flash[:notice] = "Message has been successfully deleted!"
    # end

  private
    def message_params
      params.require(:message).permit(:user_id, :trip_id, :message)
    end

    def search_params
      params.require(:trip_id)
    end

end
