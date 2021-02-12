class TheLastAirbenderFacade
  def self.get_nation_info(nation_name,character_number=25)
    response = TheLastAirbenderService.get_nation_info(nation_name,character_number)

    {
      population: response[:population],
      characters: to_poros(response[:characters]) #this was not mutable for some reason
    }
  end

  private

  def self.to_poros(chars)
    chars.map do |character_info|
      Character.new(character_info)
    end
  end
end
