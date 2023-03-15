# rubocop:disable TrailingWhitespace
=begin

Start: You start with a normal 52-card deck consisting of the 4 suits
(hearts, diamonds, clubs, and spades), 
and 13 values (2, 3, 4, 5, 6, 7, 8, 9, 10, jack, queen, king, ace).

Setup: 
- the game consists of a "dealer" and a "player". 
- Both participants are initially dealt 2 cards. 
- The player can see their 2 cards, but can only see one of the dealer's cards.

Card Values:
- The numbers 2 through 10 are worth their face value
- The jack, queen, and king are each worth 10
- The ace can be worth 1 or 11.
  - The ace's value is determined each time a new card is drawn from the deck. 
    For example, if the hand contains a 2, an ace, and a 5, then the total
    value of the hand is 18. In this case, the ace is worth 11 because
    the sum of the hand (2 + 11 + 5) doesn't exceed 21
  - if the total hand exceeds 21 with ace as 11, then ace is worth 1
  - if another ace is drawn, will need to be 1 as well

Player Turn:
- player goes first - hit or stay
- hit, player asks for another card
- if the player's hand exceeds 21, then he busts
- the decision, will be based on what he thinks the dealer has 
  - show dealers card each round.
- For example, if the dealer is showing a "10" (the other card is hidden), 
  and the player has a "2" and a "4", then the obvious choice is for 
  the player to "hit"
- The player can continue to hit as many times as they want.
- The turn is over when the player either busts or stays
- player busts, dealer wins

Dealer turn:
- when player stays, dealers turn
- always hit until the total is at least 17
- if dealer busts, then the player wins

Comparing Cards:
- when both player and dealer stay, it's time to compare the value
- who ever has highest value (closest to 21) wins

Steps:
1. Initialize deck
2. Deal cards to player and dealer
3. Player turn: hit or stay
  - repeat until bust or "stay"
  - break if answer stay or cards in hand is busted
4. If player bust, dealer wins.
5. Dealer turn: hit or stay
  - repeat until total >= 17
  - break if busted
6. If dealer bust, player wins.
7. Compare cards and declare winner.
- calculate results with one method
- display results with another
=end
# rubocop:enable TrailingWhitespace


require 'pry'

MAX_NUMBER = 21
DEALER_HIT_NUM = 17
DECK =
  [
    ['H', 2], ['H', 3], ['H', 4], ['H', 5], ['H', 6], ['H', 7], ['H', 8],
    ['H', 9], ['H', 10], ['H', 'Jack'], ['H', 'Queen'], ['H', 'King'],
    ['H', 'A'],
    ['D', 2], ['D', 3], ['D', 4], ['D', 5], ['D', 6], ['D', 7], ['D', 8],
    ['D', 9], ['D', 10], ['D', 'Jack'], ['D', 'Queen'], ['D', 'King'],
    ['D', 'A'],
    ['C', 2], ['C', 3], ['C', 4], ['C', 5], ['C', 6], ['C', 7], ['C', 8],
    ['C', 9], ['C', 10], ['C', 'Jack'], ['C', 'Queen'], ['C', 'King'],
    ['C', 'A'],
    ['S', 2], ['S', 3], ['S', 4], ['S', 5], ['S', 6], ['S', 7], ['S', 8],
    ['S', 9], ['S', 10], ['S', 'Jack'], ['S', 'Queen'], ['S', 'King'],
    ['S', 'A']
  ]

def prompt(msg)
  puts "=> #{msg}"
end

def total(cards)
  # cards = [['H', '3'], ['S', 'Q'], ... ]
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    if value == "A"
      sum += 11
    elsif value.to_i == 0 # J, Q, K
      sum += 10
    else
      sum += value.to_i
    end
  end

  # correct for Aces
  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > MAX_NUMBER
  end

  sum
end

def busted?(cards_in_hand)
  return false if cards_in_hand <= MAX_NUMBER
  true
end

def deal_cards(player_cards, dealer_cards, deck)
  2.times do
    player_cards << deck.pop
    dealer_cards << deck.pop
  end
end

def show_cards(player, dealer)
  prompt "Dealer has: #{dealer[0][1]} and unknown card"
  prompt "You have: #{player[0][1]} and #{player[1][1]}"
end

def play_again?
  prompt "Do you want to play another round? (y or n)"
  answer = gets.chomp
  return true if answer.downcase.start_with?('y')
  false
end

def display_results(player_hand, dealer_hand)
  prompt "You have #{player_hand}"
  prompt "Dealer has: #{dealer_hand}"
end

def scoreboard(p_score, c_score)
  prompt "===================="
  prompt "| PLAYER    #{p_score}      |"
  prompt "| COMPUTER  #{c_score}      |"
  prompt "===================="
end

def winner?(player_score, computer_score)
  return true if player_score == 5 || computer_score == 5
  false
end

loop do
  player_score = 0
  computer_score = 0
  
  loop do
    
    #starting
    system 'clear'
    current_deck = DECK.shuffle
    player_hand = []
    dealer_hand = []
    
    prompt "Welcome to Twenty-One!"
    
    #deal cards
    deal_cards(player_hand, dealer_hand, current_deck)
    show_cards(player_hand, dealer_hand)
    
    player_total = total(player_hand)
    dealer_total = total(dealer_hand)
    
    # player turn
    loop do
      prompt "Would you like to hit or stay? (h or s)"
      answer = gets.chomp.downcase
      if answer.start_with?('h')
        player_hand << current_deck.pop
        player_total = total(player_hand)
        prompt "You hit!"
        prompt "You got a: #{player_hand.last.last}"
        prompt "Your total is now #{player_total}"
      end
      break if answer.start_with?('s') || busted?(player_total)
    end
  
    if busted?(player_total)
      prompt "Oh you busted!"
      computer_score += 1
      scoreboard(player_score, computer_score)
      break if winner?(player_score, computer_score)
      break unless play_again?
      next
    else
      prompt "You chose to stay!"
    end
  
    # dealer turn 
    until dealer_total >= DEALER_HIT_NUM
      dealer_hand << current_deck.pop
      dealer_total = total(dealer_hand)
      prompt "Dealer hits and gets a #{dealer_hand.last.last}"
    end
    
    display_results(player_total, dealer_total)
    
    if busted?(dealer_total)
      prompt "Dealer busted!"
      prompt "You win!"
      player_score += 1
      scoreboard(player_score, computer_score)
    elsif player_total >= dealer_total
      prompt "You win!"
      player_score += 1
      scoreboard(player_score, computer_score)
    else
      prompt "You lose!"
      computer_score += 1
      scoreboard(player_score, computer_score)
    end
    
    break if winner?(player_score, computer_score) 
    break unless play_again?
  end
  
  prompt "The score was: "
  scoreboard(player_score, computer_score)
  prompt "Play another match? (y or n)"
  last_answer = gets.chomp
  break unless last_answer.downcase.start_with?('y')
  
end

prompt "Thanks for playing!"
