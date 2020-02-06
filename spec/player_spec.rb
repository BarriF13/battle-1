require "player"

describe Player do
  subject(:mrtl) { Player.new("Mrtl") }
  subject(:josh) { Player.new("Josh") }

  describe "#name" do
    it "returns the name" do
      expect(mrtl.name).to eq "Mrtl"
    end
  end

  describe "#hitpoints" do
    it "returns the hp" do
      expect(mrtl.hitpoints).to eq described_class::DEFAULT_HP
    end
  end

  #   describe "#attack" do
  #     it "reduces hp by 10" do

  #       expect(player_2.hp).to eq 50
  #     end
  #   end
end
