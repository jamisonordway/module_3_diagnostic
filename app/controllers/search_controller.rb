class SearchController < ApplicationController

  def index
    @stations = StationSearchResult.new(params[:q]).stations_call
  end
end