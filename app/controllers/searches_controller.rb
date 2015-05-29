class SearchesController < ApplicationController
  def show
    search = Search.new(params[:search])
    @results = search.results

    flash.now[:notice] = search.status
  end
end
