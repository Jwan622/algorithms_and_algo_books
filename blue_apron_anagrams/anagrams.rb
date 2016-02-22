gem 'pry'
class Anagrammer
  attr_reader :dictionary,
              :processed_dictionary

  def dictionary
    @dictionary = IO.read("./dictionary.txt").split("\n")
    require 'pry' ; binding.pry
  end

  def processed_dictionary

  end
end

Anagrammer.new.dictionary
