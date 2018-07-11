class StationSearchResult
  
  def initialize(zip)
    @zip = zip
  end

  def stations_call
    conn = Faraday.new(:url => "https://developer.nrel.gov/api/alt-fuel-stations/v1.json?fuel_type=E85,ELEC&state=CA&limit=10&api_key=altfuel_key&format=JSON") do |faraday|
    faraday.headers["X-API-KEY"] = ENV['altfuel_key']
    faraday.adapter Faraday.default_adapter
    end 
    response = conn.get '/altfuel/v1/stations/zip?=80203' 
    data = JSON.parse(response.body, symbolize_names: true)
    data[:results].map do |fuel_station_data|
        Station.new(fuel_station_data)
    end
  end 

end