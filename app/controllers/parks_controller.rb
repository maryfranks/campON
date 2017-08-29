class ParksController < ApplicationController

  def index
    @parks = Park.all
  end

  def show
    @parks = Park.find(params[:id])
  end

  def search

      @parks = Park.where(searchparams)

      render partial: 'parkList'
  end

  private
  def searchparams
    params.require(:data).permit(:biking,:birding,:boating,:canoeing,:fishing,:hiking,:hunting,:swimming)
  end

end
