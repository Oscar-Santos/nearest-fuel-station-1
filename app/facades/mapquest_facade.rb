class MapquestFacade
  def self.get_directions(from, to)
    json = MapquestService.get_directions_details(from, to)


      Route.new(json[:route])

  end
end
