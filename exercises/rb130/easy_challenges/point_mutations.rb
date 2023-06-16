#count the differences between the two strands
#if sequences are of different length, compute over shorter length 


class DNA

  def initialize(dna_string)
    @sequence = dna_string
  end

  def hamming_distance(sequence2)
    distance = 0
    if @sequence.length > sequence2.length
      (0...sequence2.size).each do |index|
        distance += 1 if sequence2[index] != @sequence[index]
      end
    else
      (0...@sequence.size).each do |index|
        distance += 1 if sequence2[index] != @sequence[index]
      end
    end
    distance
  end

end
