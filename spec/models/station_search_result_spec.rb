require 'rails_helper'

describe StationSearchResult do
  it "exists" do
    station_search_result = StationSearchResult.new('80205')

    expect(station_search_result).to be_a(StationSearchResult)
  end
end 