
# Your code goes here!

class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(array)
    matched_words = []
    sorted_word = @word.chars.sort.join
    array.map do |potential_word|
      sorted_potential_word = potential_word.chars.sort.join
      if sorted_potential_word == sorted_word
        matched_words << potential_word
      end
    end
    matched_words
  end
end

