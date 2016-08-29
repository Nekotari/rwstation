class SearchesController < ApplicationController
  def show
    # @stations = RailwayStation.all
  end

  def new

  end

  def create
    @trains = Search.find_trains(params[:first_station_id], params[:last_station_id])
    render :show
  end

  private

  def search_params
    params.require(:search).permit(:first_station_id, :last_station_id)
  end
end