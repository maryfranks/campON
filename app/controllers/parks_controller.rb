class ParksController < ApplicationController

  def index
    @parks = Park.all
  end

  def show
    @parks = Park.find(params[:id])
  end

  def search

      @parks = Park.where(params[:data])
      render partial: 'parkList'
  end

end
