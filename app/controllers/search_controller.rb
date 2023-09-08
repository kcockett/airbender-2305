class SearchController < ApplicationController
  def index
    @nation_name = params[:nation].split('+').map(&:capitalize).join(' ')
    service = AirbenderApiService.new
    endpoint = "characters"
    search_params = { affiliation: params[:nation] }
    @members = service.fetch_data(endpoint, search_params)
    @number_members = Member.all.count
  end
end