class SearchController < ApplicationController
    
  def
    @search = StationSearchResult.new(params[:q])
  end
end