require 'deck'

describe Deck do 
  subject(:deck) { Deck.new }
  describe "#initialize" do 
    it "initializes a deck of cards properly" do 
      expect(deck.length).to eq(52)
    end

    it "creates a deck with no duplicates" do 
      expect(deck.cards).to eq(deck.cards.uniq)
    end
  end

  describe "#shuffle" do 
    it "returns a deck that is in a different order than original deck" do
      expect(deck.cards).not_to eq(deck.shuffle)
    end
  end

  describe "#deal_cards" do 
    it "returns number of cards from top of deck" do
      expect(deck.cards[-3..-1].reverse).to eq(deck.deal_cards(3))
    end
  end

end