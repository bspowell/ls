require 'pry'

class Deck
  RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze

  def initialize
    @deck = []
    reset
  end

  def reset
    RANKS.product(SUITS).each do |card|
      @deck << Card.new(card[0], card[1])
    end
    @deck.shuffle!
  end

  def draw
    reset if @deck.empty?
    @deck.pop
    # @deck.delete_at(@deck.index(@deck.sample))
  end
end

class Card
  attr_reader :rank, :suit
  include Comparable 

  SUITS = {
    1 => 1, 
    2 => 2, 
    3 => 3, 
    4 => 4, 
    5 => 5, 
    6 => 6, 
    7 => 7, 
    8 => 8, 
    9 => 9, 
    10 => 10,
    'Ace' => 14,
    'King' => 13,
    'Queen' => 12,
    'Jack' => 11
  }

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def <=>(other)
    SUITS[rank] <=> SUITS[other.rank]
  end

  def to_s
    "#{rank} of #{suit}"
  end

end

deck = Deck.new
drawn = []
52.times { drawn << deck.draw }
puts drawn.count { |card| card.rank == 5 } == 4
puts drawn.count { |card| card.suit == 'Hearts' } == 13

drawn2 = []
52.times { drawn2 << deck.draw }
puts drawn != drawn2 # Almost always.