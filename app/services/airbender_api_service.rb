class AirbenderApiService
  def initialize
    @connection = Faraday.new(url: 'https://last-airbender-api.fly.dev')
  end

  def fetch_data(endpoint, params = {})
    response = @connection.get("https://last-airbender-api.fly.dev/api/v1/characters", params)
    member_data = JSON.parse(response.body)

    # Initialize an array to store Member objects
    members = []

    # Iterate through the member_data array and create Member objects
    member_data.each do |data|
      member = Member.new(
        name: data['name'],
        photo: data['photoUrl'],
        allies: data['allies'],
        enemies: data['enemies'],
        affiliations: data['affiliation'].split(', ')
      )
      members << member
    end

    members # Return the array of Member objects
  end
end
