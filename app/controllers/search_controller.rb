class SearchController < ApplicationController

  def index
    @stations = StationSearchResult.new(params[:q])
  end
end