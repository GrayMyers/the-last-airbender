require "rails_helper"

describe "The last airbender service" do
  describe "(happy path)" do
    it "can get members of a nation" do
      results = TheLastAirbenderService.get_characters("Fire+Nation")
      expect(results.count).to eq(25)
      expect(results[0]).to be_a(Hash)

      results = TheLastAirbenderService.get_characters("Fire+Nation",10)
      expect(results.count).to eq(10)
      expect(results[0]).to be_a(Hash)
    end

    it "can get the population count of a nation" do
      results = TheLastAirbenderService.get_population("Fire+Nation")
      expect(results).to be_a(Integer)
    end
  end
end
