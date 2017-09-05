class TodosController < ApplicationController

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new
    @todo.trip_id = params[:trip_id]
    @todo.text = params[:todo][:text]

    if @todo.save
      redirect_to "/trips/#{params[:trip_id]}"
    end
  end

end
