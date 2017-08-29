class MessagesController < ApplicationController


  def new
    @message = Message.new
  end

  def create
    @message = Message.new

    if @message.save
      flash[:success] = "Message successfully added"
      redirect_to trips_path
    else
      render_new_message_form_path
  end

  # def show
  #   @message = Message.find(params[:id])
  # end

  private
    def message_params
    params.require(:message).permit(:user_id, :trip_id)
    end

end
