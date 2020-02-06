require "player"

describe Player do
  subject(:mrtl) { Player.new("Mrtl") }

  describe "#name" do
    it "returns the name" do
      expect(mrtl.name).to eq "Mrtl"
    end
  end
end
