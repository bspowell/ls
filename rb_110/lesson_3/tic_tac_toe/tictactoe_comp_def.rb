=begin

Tic Tac Toe is a 2 player game played on a 3x3 board
Each player takes a turn and marks a square on the board
First player to reach 3 squares in a row, including diagonals, wins
If all 9 squares are marked and no player has 3 squares in a
row, then the game is a tie

1. Display the initial empty 3x3 board
2. ask the user to mark a square
3a. computer assess if any immediate threats
  - check board to see if any row has 2 'X's
  - check board to see if any column has 2 'X's
  - check board to see if any diagonal has 2 'X's
  - if no, continue to pick random spot
  - if yes, pick spot empty spot in line 
3b. computer marks a square
4. display the updated board state.
5. If winner, display winner
6. If board is full, display tie
7. If neither winner nor board is full, go to #2
8. Play again?
9. If yes, go to #1
10. Goodbye!

#problem - Computer AI Defense




=end

require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]] # diagnals

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're a #{PLAYER_MARKER}. Computer is a #{COMPUTER_MARKER}"
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(array, comma=',', ending='or')
  case array.size
  when 0 then ''
  when 1 then array.first.to_s
  when 2 then array.join(" #{word} ")
  else
    string = ''
    end_number = array.pop
    array.each { |num| string << "#{num}#{comma} " }
    string << ending + " #{end_number}"
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square to place a piece: (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square) # if user picked a valid choice
    prompt "Sorry that's not a valid choice"
  end

  brd[square] = PLAYER_MARKER
end

def return_square_if_risk(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 2 && 
       brd.values_at(*line).count(INITIAL_MARKER) == 1 # *line is the same as line[0], line[1], line[2]
      
      # returns an array of the element in the nested array that equals ' '.
      # square[0] returns element at index 0
      square = line.select { |element| brd[element] == INITIAL_MARKER }
      return square[0]
    else
      next
    end
  end
  nil
end

def computer_places_piece!(brd)
  square = nil
  square = return_square_if_risk(brd)
  if square 
    brd[square] = COMPUTER_MARKER
    return
  else
    square = empty_squares(brd).sample
  end
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd) # if returns nil, bang bang will return false
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    # *line is the same as line[0], line[1], line[2]
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def winning_prompt(winner)
  prompt "#{winner} won the game!"
end

def final_winner?(player, computer)
  return true if player == 5 || computer == 5
  false
end

def play_another_round
  prompt "Next round (y or n)?"
  answer = gets.chomp
  answer
end

loop do
  player_score = 0
  computer_score = 0
  
  loop do
    board = initialize_board
    loop do
      display_board(board)
  
      player_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
  
      computer_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
    end
    
    display_board(board)

    if someone_won?(board)
      detect_winner(board) == 'Player' ? player_score += 1 : computer_score += 1
      prompt "#{detect_winner(board)} won this round!"
      prompt "It's #{player_score} to #{computer_score}"
    else
      prompt "It's a tie!"
      prompt "It's still #{player_score} to #{computer_score}"
    end
    
    break if final_winner?(player_score, computer_score)
    prompt "First to 5 wins!"
    break unless play_another_round.downcase.start_with?('y')
    
  end
  prompt "Play a new game? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')

end

prompt "Thanks for playing Tic Tac Toe, Goodbye"
