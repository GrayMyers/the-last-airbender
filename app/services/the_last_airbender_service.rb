class TheLastAirbenderService
  LARGE_NUMBER = 100000000000000000

  def self.get_nation_info(nation_name,number_of_characters)
    response = conn.get("characters?affiliation=#{nation_name}&perPage=#{LARGE_NUMBER}")
    {
      population: results.count,
      characters: results[0..(number_of_characters-1)]
    }
  end

  private

  def self.conn
    #https://last-airbender-api.herokuapp.com/api/v1/characters?affiliation=Fire+Nation
    @@conn = Faraday.new(url: "https://last-airbender-api.herokuapp.com/api/v1")
  end

  def self.json_parse(json)
    JSON.parse(json.body, symbolize_names: true)
  end
end
