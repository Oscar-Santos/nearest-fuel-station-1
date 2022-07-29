class SearchController < ApplicationController
  def index
    @location = SearchFacade.get_station(params[:location])

    @directions_location = MapquestFacade.get_directions(params[:location], @location.address)
    
  end
end
