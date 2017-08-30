class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new
    trip_id = params[:trip_id], params[:user_id]
    @user = User.find(user_id)
    @messages = @trip.messages

    if @message.save
      flash[:success] = "Message successfully added"
      redirect_to trips_path
    else
      render 'new_message_form_path'
    end

  # def show
  #   @message = Message.find(params[:id])
  # end

  private
    def message_params
    params.require(:message).permit(:user_id, :trip_id)
    end

end
