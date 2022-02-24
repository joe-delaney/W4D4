require "card"

describe Card do 
  subject(:card) {Card.new(:'10',:heart)} 

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
end