class GuessingGame

  def initialize(low, high)
    @low = low
    @high = high
    @guess_count = Math.log2(high - low).to_i + 1
    @number = rand(low...high)
    @result = 0
  end

  def play
    @guess_count.downto(1) do |guesses_remain|
      puts "You have #{guesses_remain} remaining"
      @result = check_answer(get_guess)
      @guess_count -= 1
      break if win?
    end
    game_ends
  end

  def win?
    @number == @result
  end

  def get_guess
    loop do 
      puts "Enter a number between #{@low} and #{@high}:"
      answer = gets.chomp.to_i
      return answer if (answer < @high) && (answer > @low)
      puts "Invalid guess"
    end
  end

  def check_answer(answer)
    if answer > @number
      puts "Your guess is too high"
    elsif answer < @number
      puts "Your guess is too low"
    else
      puts "That's the number!"
      return answer
    end
  end

  def game_ends
    puts win? ? "You won!" : "You have no more guesses, you lost!"
  end

end



game = GuessingGame.new(501, 1500)
game.play

