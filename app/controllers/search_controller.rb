class SearchController < ApplicationController
  def index
    @info = TheLastAirbenderFacade.get_nation_info(params[:nation])
  end
end
