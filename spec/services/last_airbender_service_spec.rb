require "rails_helper"

describe "The last airbender service" do
  describe "(happy path)" do
    it "can get info for a nation" do
      results = TheLastAirbenderService.get_nation_info("Fire+Nation",25)
      population = results[:population]
      characters = results[:characters]

      first_character = characters[0]\

      expect(population).to be_an(Integer)#expect(subject.first).to have_key(:revenue)
      expect(characters).to be_a(Array)
      expect(characters.count).to eq(25)

      expect(first_character).to have_key(:allies)
      expect(first_character).to have_key(:enemies)
      expect(first_character).to have_key(:affiliation)

      expect(first_character[:allies]).to be_an(Array)
      expect(first_character[:enemies]).to be_an(Array)
      expect(first_character[:affiliation]).to be_an(String)
    end
  end
end
