require 'pry'

class Board
  WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                  [[1, 5, 9], [3, 5, 7]]              # diagonals

  def initialize
  	@squares = {}
    reset
  end

  def offense?
    WINNING_LINES.each do |line|
      # @squares.values_at(*line) = array of square objects
      # checks to see if there are 2 human markers and the line is not full
      if count_computer_marker(@squares.values_at(*line)) == 2 && !full?(line) 
        return true
      end
    end
    false
  end

  def immediate_threat?
    WINNING_LINES.each do |line|
      # @squares.values_at(*line) = array of square objects
      # checks to see if there are 2 human markers and the line is not full
      if count_human_marker(@squares.values_at(*line)) == 2 && !full?(line) 
        return true
      end
    end
    false
  end

  def select_empty_square
    WINNING_LINES.each do |line|
      # on the line array eg [1,2,3], selecting the keys that are not marked and returning that key
      if count_human_marker(@squares.values_at(*line)) == 2 && !full?(line)
        return line.select {|key| @squares[key].unmarked? }[0]
      end
    end
  end

  def select_empty_square_offense
    WINNING_LINES.each do |line|
      # on the line array eg [1,2,3], selecting the keys that are not marked and returning that key
      if count_computer_marker(@squares.values_at(*line)) == 2 && !full?(line)
        return line.select {|key| @squares[key].unmarked? }[0]
      end
    end
  end

  def []=(key, marker)
    @squares[key].marker = marker
  end
  
  def unmarked_keys
    @squares.keys.select {|key| @squares[key].unmarked? }
  end
  
  def full?(assess_line=nil)
    #takes a line, and see's if there is any unmarked spots.
    if assess_line != nil
      return assess_line.select {|key| @squares[key].unmarked? }.empty?
    end
    unmarked_keys.empty?
  end

  def someone_won?
    !!winning_marker
  end

  def count_human_marker(squares) #passing in an array of square objects like #<Square:0x000000011414d038 @marker=" ">
    squares.collect(&:marker).count(TTTGame::HUMAN_MARKER)
  end

  def count_computer_marker(squares)
    squares.collect(&:marker).count(TTTGame::COMPUTER_MARKER)
  end
  # returns winning marker or nil
  def winning_marker
    WINNING_LINES.each do |line|
      if count_human_marker(@squares.values_at(*line)) == 3
        return TTTGame::HUMAN_MARKER
      elsif count_computer_marker(@squares.values_at(*line)) == 3
        return TTTGame::COMPUTER_MARKER
      end
    end
    nil
  end

  def reset
    (1..9).each {|key| @squares[key] = Square.new}
  end 

  def draw
    puts "     |     |"
    puts "  #{@squares[1]}  |  #{@squares[2]}  |  #{@squares[3]}"
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{@squares[4]}  |  #{@squares[5]}  |  #{@squares[6]}"
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{@squares[7]}  |  #{@squares[8]}  |  #{@squares[9]}"
    puts "     |     |"
  end

end

class Square
  INITIAL_MARKER = " "

  attr_accessor :marker
  
  def initialize(marker=INITIAL_MARKER)
    @marker = marker
  end
  
  def to_s
    @marker
  end
  
  def unmarked?
    marker == INITIAL_MARKER
  end
end

class Player
  attr_reader :marker
  
  def initialize(marker)
    @marker = marker
  end
end

class TTTGame
  HUMAN_MARKER = "X"
  COMPUTER_MARKER = "O"
  FIRST_TO_MOVE = [HUMAN_MARKER,COMPUTER_MARKER].sample
  
  attr_reader :board, :human, :computer
  attr_accessor :turn, :human_score, :computer_score
  
  def initialize
    @board = Board.new
    @human = Player.new(HUMAN_MARKER)
    @computer = Player.new(COMPUTER_MARKER)
    @turn = FIRST_TO_MOVE
    @human_score = 0
    @computer_score = 0
  end
  
  public

  def play
    clear_screen
    display_welcome_message
    main_game
    display_goodbye_message
  end


  private 

  def main_game
    loop do
      display_board
      player_moves
      display_result
      break unless play_again?
      reset
      display_play_again_message
    end
  end

  def player_moves
    loop do
      current_player_moves
      break if board.someone_won? || board.full?
      clear_screen_and_display_board if human_turn?
    end
  end

  def display_welcome_message
    puts "Welcome to Tic Tac Toe!"
    puts ""
  end

  def display_goodbye_message
    puts "Thanks for playing Tic Tac Toe! Goodbye!"
  end
  
  def display_board(clear: true)
    puts "You're a #{human.marker}. Computer is a #{computer.marker}"
    puts ""
    board.draw
    puts ""
  end

  def clear_screen_and_display_board
    clear_screen
    display_board
  end
  
  def choose_message
    case 
    when board.unmarked_keys.size > 2
      puts "Choose a square (#{board.unmarked_keys[0..-2].join(', ')} or #{board.unmarked_keys[-1]}): "
    when board.unmarked_keys.size == 2
      puts "Choose a square (#{board.unmarked_keys[0]} or #{board.unmarked_keys[1]})"
    else
      puts "Choose a square (#{board.unmarked_keys[0]})"
    end
  end 

  def human_moves
    choose_message
    square = nil
    loop do
      square = gets.chomp.to_i
      break if board.unmarked_keys.include?(square)
      puts "Sorry, that's not a valid choice."
    end

    board.[]=(square, human.marker)
  end
  
  def computer_moves
    if board.offense?
      board.[]=(board.select_empty_square_offense, computer.marker)
    elsif board.immediate_threat?
      board.[]=(board.select_empty_square, computer.marker)
    elsif board.unmarked_keys.include?(5)
      board.[]=(5, computer.marker)
    else 
      board.[]=(board.unmarked_keys.sample, computer.marker)
    end
  end

  def winner?
    return true if human_score == 5 || computer_score == 5
    false
  end

  def reset_score
    @human_score = 0
    @computer_score = 0
  end

  def winning_message(winner='Human')
    puts "#{winner} won the match!"
    reset_score
  end

  def keep_score(player='human')
    if player == 'computer'
      @computer_score += 1
      winning_message if winner?
    else
      @human_score += 1
      winning_message if winner?
    end
    puts "Score is Player: #{human_score}, Computer: #{computer_score}"
  end
    
  def display_result
    clear_screen_and_display_board

    case board.winning_marker
    when human.marker
      puts "You won!"
      keep_score
    when computer.marker
      puts "Computer won!"
      keep_score('computer')
    else
      puts "It's a tie!"
    end
  end
  
  def play_again?
    answer = nil
    loop do
      puts "Would you like to play again? (y/n)"
      answer = gets.chomp.downcase
      break if %w(y n).include? answer
      puts "Sorry, must be y or n"
    end

    answer == 'y'
  end

  def clear_screen
    system 'clear'
  end

  def reset
    board.reset
    @turn = FIRST_TO_MOVE
    clear_screen
  end

  def display_play_again_message
    puts "Let's play again!"
    puts ''
  end

  def human_turn?
    @turn == HUMAN_MARKER
  end
  
  def current_player_moves
    if human_turn? 
      human_moves
      @turn = COMPUTER_MARKER
    else
      computer_moves
      @turn = HUMAN_MARKER
    end
  end
end

game = TTTGame.new
game.play