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

cards = [Card.new(2, 'Hearts'),
  Card.new(10, 'Diamonds'),
  Card.new('Ace', 'Clubs')]
puts cards
puts cards.min == Card.new(2, 'Hearts')
puts cards.max == Card.new('Ace', 'Clubs')

# cards = [Card.new(5, 'Hearts')]
# puts cards.min == Card.new(5, 'Hearts')
# puts cards.max == Card.new(5, 'Hearts')

# cards = [Card.new(4, 'Hearts'),
#   Card.new(4, 'Diamonds'),
#   Card.new(10, 'Clubs')]
# puts cards.min.rank == 4
# puts cards.max == Card.new(10, 'Clubs')

# cards = [Card.new(7, 'Diamonds'),
#   Card.new('Jack', 'Diamonds'),
#   Card.new('Jack', 'Spades')]
# puts cards.min == Card.new(7, 'Diamonds')
# puts cards.max.rank == 'Jack'

# cards = [Card.new(8, 'Diamonds'),
#   Card.new(8, 'Clubs'),
#   Card.new(8, 'Spades')]
# puts cards.min.rank == 8
# puts cards.max.rank == 8


=begin
  use the code to determine the lowest and highest ranking cards in an Array of Card objects
 
  numeric cards are lower - ordered from 2 to 10
  then Jacks, Queen, Kings, Aces - in that order
  if two or more cards are the same, the min / max methods should return one of the matching cards
  create a to_s method that returns a string representation of the card eg. "Jack of Diamonds", "3 of clubs"


=end
