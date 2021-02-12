class Character
  attr_reader :affiliation, :enemies, :allies, :name, :image_url
  def initialize(data)
    @name = data[:name]
    @image_url = data[:photoUrl] ? data[:photoUrl] : ""
    @affiliation = data[:affiliation]
    @enemies = data[:enemies]
    @allies = data[:allies]
  end
end
