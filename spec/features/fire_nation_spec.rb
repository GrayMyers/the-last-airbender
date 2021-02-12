require "rails_helper"

describe "fire nation page" do
  describe "(happy path)" do
    it "allows users to search for members" do
      visit fire_nation_path

      click_button "Search For Members"

      expect(current_path).to eq(search_path)
      expect(page).to have_content(TheLastAirbenderService.population_count("fire"))
      
    end
  end
end
