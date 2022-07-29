class SearchFacade
  def self.get_station(location)
    json = SearchService.get_closest_fuel_station(location)

    Station.new(json[:fuel_stations].first)
  end
end
