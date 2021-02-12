describe Character do
  it "exists and has attributes" do
    hash = {
      enemies: [],
      allies: [],
      affiliation: "Fire Nation"
    }
    char = Character.new(hash)

    expect(char).to be_a(Character)
    expect(char.enemies).to eq(hash[:enemies])
    expect(char.allies).to eq(hash[:allies])
    expect(char.affiliation).to eq(hash[:affiliation])
  end
end
