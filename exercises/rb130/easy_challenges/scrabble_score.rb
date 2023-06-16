

class Scrabble

  VALUES = {
    %w(A E I O U L N R S T) => 1,
    %w(D G) => 2,
    %w(B C M P) => 3,
    %w(F H V W Y) => 4,
    %w(K) => 5,
    %w(J X) => 8,
    %w(Q Z) => 10
  }

  def initialize(string)
    @word = string
    @total = 0
  end

  def score
    return 0 if @word == nil
    @word.chars.each do |letter|
      VALUES.keys.each do |key|
        @total += VALUES[key] if key.include?(letter.upcase)
      end
    end
    @total
  end

  def self.score(word)
    Scrabble.new(word).score
  end
end
