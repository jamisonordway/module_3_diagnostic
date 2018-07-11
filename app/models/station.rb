class Station
  attr_reader :name, :address, :fuel_types, :distance, :access_times
  def initialize(attributes)
    @name = attributes[:station_name]
    @address = attributes[:street_address]
    @fuel_types = attributes[:fuel_type_code]
    @distance = '5 miles'
    # ^ don't know how to get the distance, will come back to this
    @access_times = attributes[:access_days_time]
  end 
end