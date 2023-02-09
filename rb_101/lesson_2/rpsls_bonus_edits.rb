CHOICES = %w(rock paper scissors lizard spock)
WIN_CONDITION = [%w(rock scissors), %w(rock lizard), %w(paper rock),
                 %w(paper spock), %w(scissors paper), %w(scissors lizard),
                 %w(lizard spock), %w(lizard paper), %w(spock rock),
                 %w(spock scissors)]

def prompt(message)
  puts "=> #{message}"
end

def validate_choice(user_choice)
  CHOICES.any?(Regexp.new(user_choice))
end

def choice_to_word(player_choice)
  word = CHOICES.select do |element|
    element.start_with?(Regexp.new(player_choice))
  end
  word.join()
end

def wins?(player, computer)
  WIN_CONDITION.any? do |element|
    element[0] == player && element[1] == computer
  end
end

def prompt_user_choice
  u_choice = ''
  loop do
    prompt("Choose one of the following: rock, paper, scissors, lizard, spock")
    u_choice = gets.chomp

    if u_choice.downcase == 's'
      prompt("Do you mean spock or scissors?")
      next
    end
    
    if u_choice == ""
      next
    end

    break if validate_choice(u_choice)

    prompt("Enter a valid option")
  end
  return u_choice
end

player_score = 0
computer_score = 0
tie_score = 0
user_choice = ''

prompt("Welcome to RPSLS!")
loop do
  user_choice = prompt_user_choice
  user_choice = choice_to_word(user_choice)
  computer_choice = CHOICES.sample

  if wins?(user_choice, computer_choice)
    prompt("You won!")
    player_score += 1
  elsif wins?(computer_choice, user_choice)
    prompt("Computer won!")
    computer_score += 1
  else
    prompt("It's a tie!")
    tie_score += 1
  end

  prompt("You chose #{user_choice}, computer chose #{computer_choice}")
  prompt("Score (Win,Loss,Tie): #{player_score},#{computer_score},#{tie_score}")
  prompt("Would you like to play again? (Y to play again)")
  play_again = gets.chomp
  if play_again.downcase.start_with?('y')
    next
  else
    break
  end
end

prompt("Goodbye!")
