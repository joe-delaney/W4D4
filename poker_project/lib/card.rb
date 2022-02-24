class Card 
  attr_reader :symbol, :suit

  VALID_SUITS = [:spade, :heart, :diamond, :club]
  VALID_SYMBOLS = [:'2',:'3',:'4',:'5',:'6',:'7',:'8',:'9',:'10',:jack,:queen,:king,:ace ]

  def initialize(symbol, suit)
    raise "Invalid Symbol" unless VALID_SYMBOLS.include?(symbol)
    raise "Invalid Suit" unless VALID_SUITS.include?(suit)
    @symbol = symbol 
    @suit = suit
  end


end