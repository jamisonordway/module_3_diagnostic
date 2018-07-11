class SearchController < ApplicationController
  def index
   
    @search = StationSearchResult.new(params[:q])
  end
end