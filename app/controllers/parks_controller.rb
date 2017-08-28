class ParksController < ApplicationController

  def index
    @parks = Park.all
  end

  def show
    @parks = Restaurant.find(params[:id])
  end

end
