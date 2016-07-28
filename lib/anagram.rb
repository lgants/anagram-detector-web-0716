require 'pry'


class Anagram
  attr_accessor :word

  def initialize(input_word)
    @word = input_word
  end

  def match(possible_anagrams)
    results_array = Array.new
    possible_anagrams.each do |element|
      if element.split("").sort == word.split("").sort
        results_array << element
      end
    end
    results_array
  end
end
