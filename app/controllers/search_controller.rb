class SearchController < ApplicationController
  def index
    @nation = params[:nation].split('+').map(&:capitalize).join(' ')
  end
end