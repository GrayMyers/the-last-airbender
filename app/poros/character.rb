class Character
  attr_reader :affiliation, :enemies, :allies, :name
  def initialize(data)
    @name = data[:name]
    @affiliation = data[:affiliation]
    @enemies = data[:enemies]
    @allies = data[:allies]
  end
end
