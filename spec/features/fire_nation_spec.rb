require "rails_helper"

describe "fire nation page" do
  describe "(happy path)" do
    it "allows users to search for members" do
      visit search_path

      expect(page).to have_content(TheLastAirbenderService.population_count("fire"))

    end
  end
end
