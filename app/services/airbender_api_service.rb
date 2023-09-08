class AirbenderApiService
  def initialize
    @connection = Faraday.new(url: 'https://last-airbender-api.fly.dev')
  end

  def fetch_data(endpoint, params = {})
    response = @connection.get(endpoint, params)
    JSON.parse(response.body)
  end
end