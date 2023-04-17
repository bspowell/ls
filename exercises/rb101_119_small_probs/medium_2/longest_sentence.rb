=begin
Write a program that reads the content of a text file
and then prints the longest sentence in the file based
on number of words. Sentences may end with periods (.),
exclamation points (!), or question marks (?). 
Any sequence of characters that are not spaces or sentence-ending
characters should be treated as a word. 
You should also print the number of words in the longest sentence.


Problem:
- write a program that reads text and prints the longest sentence
- the longest sentence is based on number of words
- sentences can end in periods(.),(!) or (?)
- any sequence of chars that are not spaces, or sentence ending chars
should be treaeted as words
- You should print the number of words in the longest sentence


Input: txt file 
Output: string(longest sentence), integer (num of words)

Rules:
- sentence can end in . ! or ?
- -- is a word


Examples/Modeling:
sentences = text.split(/\.|\?|!/)


Algorithm:
- given string
- split string into array sentences
- iterate over array of sentences
  - split the sentences into words and count elements
- print the longest sentence

=end

STRING = "Four score and seven years ago our fathers brought forth
on this continent a new nation, conceived in liberty, and
dedicated to the proposition that all men are created
equal.

Now we are engaged in a great civil war, testing whether
that nation, or any nation so conceived and so dedicated,
can long endure. We are met on a great battlefield of that
war. We have come to dedicate a portion of that field, as
a final resting place for those who here gave their lives
that that nation might live. It is altogether fitting and
proper that we should do this.

But, in a larger sense, we can not dedicate, we can not
consecrate, we can not hallow this ground. The brave
men, living and dead, who struggled here, have
consecrated it, far above our poor power to add or
detract. The world will little note, nor long remember
what we say here, but it can never forget what they
did here. It is for us the living, rather, to be dedicated
here to the unfinished work which they who fought
here have thus far so nobly advanced. It is rather for
us to be here dedicated to the great task remaining
before us -- that from these honored dead we take
increased devotion to that cause for which they gave
the last full measure of devotion -- that we here highly
resolve that these dead shall not have died in vain
-- that this nation, under God, shall have a new birth
of freedom -- and that government of the people, by
the people, for the people, shall not perish from the
earth."


def printstring(string)
  sentences = string.split(/\.|\?|!/)
  sentences.each do |sent|
    sent.gsub!("\n", ' ')
  end
  sentences.map! do |sent|
    sent.split.count
  end
end

p printstring(STRING)