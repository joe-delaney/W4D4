require_relative "card.rb"

class Deck 
  attr_reader :cards 

  def initialize
    @cards = []
    reset_deck
  end

  def length 
    cards.length
  end

  def shuffle 
    @cards = cards.shuffle
    cards
  end 

  def deal_cards(n = 1) 
    new_cards = []
    (n).times { new_cards << cards.pop }
    new_cards 
  end

  private
  def reset_deck 
    suits = Card::VALID_SUITS
    symbols = Card::VALID_SYMBOLS
    suits.each do |suit|
      symbols.each do |symbol|
        cards << Card.new(symbol, suit)
      end
    end
  end

end