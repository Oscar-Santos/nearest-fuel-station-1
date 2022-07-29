class MapquestService
  def self.get_directions_details(from, to)
  end_point = '/directions/v2/route'
    response = connection.get(end_point) do |faraday|
      faraday.params['key'] = ENV['mapquest_api_key']
      faraday.params['from'] = from
      faraday.params['to'] = to
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.connection
    url = 'http://www.mapquestapi.com'
    Faraday.new(url: url)
  end
end
