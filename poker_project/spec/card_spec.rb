require "card"

describe Card do 
  subject(:card) {Card.new(:'10',:heart)} 
  let(:card2) {Card.new(:'9', :heart)}
  describe '#initialize' do 
    context "with valid arguments" do
      it "instantiates a card correctly" do
        expect(card.symbol).to eq(:'10')
        expect(card.suit).to eq(:heart)
      end
    end
    context "with invalid arguments" do
      it "raises and error with invalid suit" do
        expect {Card.new(:'10', :sppads)}.to raise_error("Invalid Suit")
      end
      it "raises and error with invalid symbol" do
          expect {Card.new(:'15', :spade)}.to raise_error("Invalid Symbol")
      end
    end
  end

  describe '#compare_card' do
    it "returns self when self is greater than other card" do
      expect(card.compare_card(card2)).to eq(card)
    end
    it "returns other card when self is less than other card" do
      expect(card2.compare_card(card)).to eq(card)
    end
  end 
end