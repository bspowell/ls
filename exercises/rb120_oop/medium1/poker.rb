# Include Card and Deck classes from the last two exercises.
require 'pry'

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

class Deck
  RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze
  attr_reader :deck

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
  end
end

class Card
  attr_reader :rank, :suit
  include Comparable 

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


class PokerHand
  attr_reader :hand
  include Comparable

  def initialize(deck)
    @hand = []
    @rank_count = Hash.new(0)
    create_hand(deck)
  end

  def create_hand(deck)
    if deck.class == Array
      @hand = deck
    else
      5.times { @hand << deck.draw }
    end
    rank_counting
  end

  def print
    puts hand
  end

  def rank_counting
    @hand.each do |card|
      @rank_count[card.rank] += 1
    end
  end

  def evaluate
    case
    when royal_flush?     then 'Royal flush'
    when straight_flush?  then 'Straight flush'
    when four_of_a_kind?  then 'Four of a kind'
    when full_house?      then 'Full house'
    when flush?           then 'Flush'
    when straight?        then 'Straight'
    when three_of_a_kind? then 'Three of a kind'
    when two_pair?        then 'Two pair'
    when pair?            then 'Pair'
    else                       'High card'
    end
  end

  private

  def royal_flush?
    self.hand == [
      Card.new(10,      'Hearts'),
      Card.new('Ace',   'Hearts'),
      Card.new('Queen', 'Hearts'),
      Card.new('King',  'Hearts'),
      Card.new('Jack',  'Hearts')
    ]

  end

  def straight_flush?
    #find out if the ranks are in sequence and suits are all same

   flush? && straight?

  end

  def four_of_a_kind?
    #find out if there are 4 ranks same

    @rank_count.each do |_, num|
      return true if num == 4
    end
    false

  end

  def full_house?
    #find out if there are 3 ranks same, and 2 ranks same
    threes = 0
    twos = 0

    @rank_count.each do |_, num|
      twos += 1 if num == 2
      threes += 1 if num == 3
    end

    threes == 1 && twos == 1

  end

  def flush?
    #find out if there are 5 cards that are same suit
    return true if self.hand.all? { |card| card.suit == hand[0].suit }
    false

  end

  def straight?
    #find out if there are 5 ranks that are in sequence
    return false if @rank_count.any? { |_, count| count > 1 }

    array_rank = []
    @hand.each do |card|
      array_rank << SUITS[card.rank]
    end
    array_rank.min == array_rank.max - 4

  end

  def three_of_a_kind?
    #find out if 3 cards have the same rank

    @rank_count.each do |_, num|
      return true if num == 3
    end
    false

  end

  def two_pair?
    #find out if there are two cards that have the same rank x 2
    pair_count = 0

    @rank_count.each do |_, num|
      pair_count += 1 if num == 2
    end

    pair_count == 2

  end

  def pair?
    #find out if there are 2 cards same rank

    @rank_count.each do |_, num|
      return true if num == 2
    end
    false

  end
end

hand = PokerHand.new(Deck.new)
hand.print
puts hand.evaluate

# Danger danger danger: monkey
# patching for testing purposes.
class Array
  alias_method :draw, :pop
end

# Test that we can identify each PokerHand type.
hand = PokerHand.new([
  Card.new(10,      'Hearts'),
  Card.new('Ace',   'Hearts'),
  Card.new('Queen', 'Hearts'),
  Card.new('King',  'Hearts'),
  Card.new('Jack',  'Hearts')
])
puts hand.evaluate == 'Royal flush'

hand = PokerHand.new([
  Card.new(8,       'Clubs'),
  Card.new(9,       'Clubs'),
  Card.new('Queen', 'Clubs'),
  Card.new(10,      'Clubs'),
  Card.new('Jack',  'Clubs')
])
puts hand.evaluate == 'Straight flush'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Four of a kind'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Full house'

hand = PokerHand.new([
  Card.new(10, 'Hearts'),
  Card.new('Ace', 'Hearts'),
  Card.new(2, 'Hearts'),
  Card.new('King', 'Hearts'),
  Card.new(3, 'Hearts')
])
puts hand.evaluate == 'Flush'

hand = PokerHand.new([
  Card.new('Queen', 'Clubs'),
  Card.new('King',  'Diamonds'),
  Card.new(10,      'Clubs'),
  Card.new('Ace',   'Hearts'),
  Card.new('Jack',  'Clubs')
])
puts hand.evaluate == 'Straight'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(6, 'Diamonds')
])
puts hand.evaluate == 'Three of a kind'

hand = PokerHand.new([
  Card.new(9, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(8, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Two pair'

hand = PokerHand.new([
  Card.new(2, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(9, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Pair'

hand = PokerHand.new([
  Card.new(2,      'Hearts'),
  Card.new('King', 'Clubs'),
  Card.new(5,      'Diamonds'),
  Card.new(9,      'Spades'),
  Card.new(3,      'Diamonds')
])
puts hand.evaluate == 'High card'