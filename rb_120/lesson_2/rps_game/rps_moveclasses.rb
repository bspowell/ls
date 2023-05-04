class Move
  VALUES = ['rock', 'paper', 'scissors', 'lizard', 'spock']
  
  def initialize(value)
    # case value
    # when 'rock'
    #   @value = Rock.new
    # when 'paper'
    #   @value = Paper.new
    # when 'scissors'
    #   @value = Scissors.new
    # when 'lizard'
    #   @value = Lizard.new
    # when 'spock'
    #   @value = Spock.new
    # end
    @value = value
  end

  def scissors?
    @value == 'scissors'
  end

  def rock?
    @value == 'rock'
  end

  def paper?
    @value == 'paper'
  end

  def lizard?
    @value == 'lizard'
  end

  def spock?
    @value == 'spock'
  end

  def >(other_move)
    (rock? && other_move.scissors?) ||
      (rock? && other_move.lizard?) ||
      (paper? && other_move.rock?) ||
      (paper? && other_move.spock?) ||
      (scissors? && other_move.paper?) ||
      (scissors? && other_move.lizard?) ||
      (lizard? && other_move.spock?) ||
      (lizard? && other_move.paper?) ||
      (spock? && other_move.rock?) ||
      (spock? && other_move.scissors?)
  end

  def <(other_move)
    (rock? && other_move.paper?) ||
      (rock? && other_move.spock?) ||
      (paper? && other_move.scissors?) ||
      (paper? && other_move.lizard?) ||
      (scissors? && other_move.rock?)
      (scissors? && other_move.pock?) ||
      (lizard? && other_move.scissors?) ||
      (lizard? && other_move.rock?) ||
      (spock? && other_move.lizard?) ||
      (spock? && other_move.paper?)
  end

  def to_s
    @value
  end
end

class Rock
  attr_accessor :value
  def initialize
    @value = 'rock'
  end
  
  def self.rock?
    true
  end

end

class Paper
  attr_accessor :value
  def initialize
    @value = 'paper'
  end
  
  def self.paper?
    true
  end
end

class Scissors
  attr_accessor :value
  def initialize
    @value = 'scissors'
  end
  
  def self.scissors?
    true
  end
end

class Lizard
  attr_accessor :value
  def initialize
    @value = 'lizard'
  end
  
  def self.lizard?
    true
  end
end

class Spock
  attr_accessor :value
  def initialize
    @value = 'spock'
  end
  
  def self.spock?
    true
  end
end


class Player
  attr_accessor :move, :name

  def initialize
    set_name
  end
end

class Human < Player
  def set_name
    n = ""
    loop do
      puts "Whats your name?"
      n = gets.chomp
      break unless n.empty?
      puts "Sorry, must enter a value"
    end
    self.name = n
  end

  def choose
    choice = nil
    loop do
      puts "Please choose rock, paper, scissors, lizard, spock:"
      choice = gets.chomp
      break if Move::VALUES.include? choice
      puts "sorry, invalid choice"
    end
    self.move = Move.new(choice)
  end
end

class Computer < Player
  def set_name
    self.name = ['R2D2', 'Chappie', 'C3P0'].sample
  end

  def choose
    self.move = Move.new(Move::VALUES.sample)
  end
end

class Score
  attr_accessor :computer, :human
  
  def initialize
    @computer = 0
    @human = 0
  end
  
end

class RPSGame
  attr_accessor :human, :computer, :score

  def initialize
    @human = Human.new
    @computer = Computer.new
    @score = Score.new
  end

  def display_welcome_message
    puts "Welcome to Rock, Paper, Scissors, Lizard, Spock!"
  end

  def display_goodbye_message
    puts 'Thanks for playing Rock, Paper, Scissors, Lizard, Spock. Good bye!'
  end

  def display_moves
    puts "#{human.name} chose #{human.move}."
    puts "#{computer.name} chose #{computer.move}"
  end

  def display_winner
    if human.move > computer.move
      puts "#{human.name} won!"
      score.human += 1
      display_score
    elsif human.move < computer.move
      puts "#{computer.name} Won!"
      score.computer += 1
      display_score
    else
      puts "It's a tie!"
      display_score
    end
  end
  
  def display_score
    if score.human == 10
      puts "#{human.name} has 10 points, they win!"
      score.human = 0
      score.computer = 0
    elsif score.computer == 10
      puts "#{computer.name} has 10 points, they win!"
      score.human = 0
      score.computer = 0
    else
      puts "Score is: #{human.name} #{score.human}, #{computer.name} #{score.computer}"
    end
  end

  def play_again?
    answer = nil
    loop do
      puts "Would you like to play again? (y/n)"
      answer = gets.chomp
      break if ['y', 'n'].include? answer.downcase
      puts "Sorry, must by y or n"
    end

    return true if answer == 'y'
    false
  end

  def play
    display_welcome_message

    loop do
      human.choose
      computer.choose
      display_moves
      display_winner
      break unless play_again?
    end
    display_goodbye_message
  end
end

RPSGame.new.play
