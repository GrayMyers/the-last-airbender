require "rails_helper"

describe "fire nation page" do
  describe "(happy path)" do
    it "allows users to search for members" do
      visit search_path
      response = TheLastAirbenderFacade.get_nation_info("Fire+Nation")
      characters = response[:characters]
      population = response[:population]
      expect(page).to have_content("Population: "+population)

      characters.each do |character|
        expect(page).to have_content(character.name)
      end
    end
  end
end
