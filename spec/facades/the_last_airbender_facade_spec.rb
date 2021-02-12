require "rails_helper"

describe "the last airbender facade" do
  describe "(happy path)" do
    it "get_nation_info" do
      results = TheLastAirbenderFacade.get_nation_info("Fire+Nation")
      population = results[:population]
      characters = results[:characters]

      expect(population).to be_a(Integer)
      expect(characters[0]).to be_a(Character)
    end
  end
end
