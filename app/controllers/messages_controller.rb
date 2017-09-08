class MessagesController < ApplicationController

  def current_trip
    @trip =Trip.find(params[:id])
  end

  def new
    @message = Message.new
  end

  def create
    @trip =Trip.find(params[:trip_id])
    @message = Message.new(message_params)
    @message.user_id = current_user.id
    @message.trip_id = params[:trip_id]
    @message.message = params[:message][:message]
    
    if @message.save && !request.xhr?
      redirect_to trip_path(@trip)
    elsif @message.save
      render partial: 'message_display', locals: {messages: [@message], trip: @trip}
    else
      render "trips/show"
    end
  end

    def edit
      @trip =Trip.find(params[:trip_id])
      @message = Message.find(params[:id])
    end

    def update
      @trip = Trip.find(params[:trip_id])
      @message = Message.find(params[:id])
      @message.user_id = current_user.id
      @message.trip_id = params[:trip_id]
      @message.message = params[:message][:message]

      if @message.save
        redirect_to "/trips/#{params[:trip_id]}"
      else
        render 'trips/show'
      end
    end

    def destroy
      @message = Message.find(params[:id])
      @message.destroy
      redirect_to "/trips/#{params[:trip_id]}"
      flash[:notice] = "Message has been successfully deleted!"
    end

  private
    def message_params
      params.require(:message).permit(:message)
    end

    def search_params
      params.require(:trip_id)
    end

end
