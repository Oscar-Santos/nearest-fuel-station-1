class SearchService
  def self.get_closest_fuel_station(location)
  end_point = '/api/alt-fuel-stations/v1/nearest'
    response = connection.get(end_point) do |faraday|
      faraday.params['api_key'] = ENV['nrel_api_key']
      faraday.params['format'] = 'json'
      faraday.params['location'] = location
    end
    JSON.parse(response.body, symbolize_names: true)

  end

  def self.connection
    url = 'https://developer.nrel.gov'
    Faraday.new(url: url)
  end
end
