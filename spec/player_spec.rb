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

 

  describe "#receive_damage" do
    it "reduces player 2 hitpoints by 10" do
      expect { josh.receive_damage }.to change { josh.hitpoints }.by(-10)
    end
  end
end
