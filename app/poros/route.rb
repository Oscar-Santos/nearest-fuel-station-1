class Route
  attr_reader :distance,
              :travel_time,
              :directions

  def initialize(data)
    @distance = data[:distance]
    @travel_time = data[:formattedTime]
    @directions = full_directions(data)

  end

  def full_directions(data)
    result = []

    data[:legs].each do |leg|
      leg[:maneuvers].each do |maneuver|
        result << maneuver[:narrative]
      end
    end
    result
  end
end


# - the distance of the nearest station (should be 0.1 miles)
# - the travel time from Turing to that fuel station (should be 1 min)
# - The direction instructions to get to that fuel station
#   "Turn left onto Lawrence St Destination will be on the left"
