class TodosController < ApplicationController

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new
    @todo.trip_id = params[:trip_id]
    @todo.text = params[:todo][:text]

    if @todo.save && !request.xhr?
      redirect_to "/trips/#{params[:trip_id]}"
    elsif @todo.save && request.xhr?
      render json: {text: @todo.text}
    else
      render "trips/show"
    end
  end

  def edit
    @trip =Trip.find(params[:trip_id])
    @todo = Todo.find(params[:id])
  end

  def update
    @trip = Trip.find(params[:trip_id])
    @todo = Todo.find(params[:id])
    @todo.trip_id = params[:trip_id]
    @todo.text = params[:todo][:text]

    if @todo.save
      redirect_to "/trips/#{params[:trip_id]}"
    else
      render 'trips/show'
    end
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
    redirect_to "/trips/#{params[:trip_id]}"
    flash[:notice] = "ToDo has been successfully deleted!"
  end

end
