require "game"

describe Game do
  subject(:game) { described_class.new }
  let(:mrtl) { double(:player_1) }
  let(:josh) { double(:player_2) }

  describe "#attack" do
    it "damages the player" do
      expect(josh).to receive(:receive_damage)
      game.attack(josh)
    end
  end
end
