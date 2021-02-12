describe Character do
  it "exists and has attributes" do
    hash = {
      name: "Me",
      enemies: [],
      allies: [],
      affiliation: "Fire Nation"
    }
    char = Character.new(hash)

    expect(char).to be_a(Character)
    expect(char.image_url).to be_a(String)
    expect(char.enemies).to eq(hash[:enemies])
    expect(char.allies).to eq(hash[:allies])
    expect(char.affiliation).to eq(hash[:affiliation])
    expect(char.name).to eq(hash[:name])
  end
end
