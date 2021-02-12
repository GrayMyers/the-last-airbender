class Character
  attr_reader :affiliation, :enemies, :allies
  def initialize(data)
    @affiliation = data[:affiliation]
    @enemies = data[:enemies]
    @allies = data[:allies]
  end
end
