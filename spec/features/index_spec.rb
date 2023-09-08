require "rails_helper"

RSpec.describe "Root Index page" type: :feature do
  describe "When I visit '/'" do
    it "And I select 'Fire Nation' from the select field,
      And I click 'Search for Members'
      Then I should be on page '/search'
      Then I should see the total number of people who live in the Fire Nation. (should be close to 100)
      And I should see a list with the detailed information for the first 25 members of the Fire Nation.
      And for each of the members I should see:
      - The name of the member (and their photo, if they have one)
      - The list of allies or "None"
      - The list of enemies or "None"
      - Any affiliations that the member has" do
    end
  end
end