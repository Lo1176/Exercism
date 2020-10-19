=begin
Write your code for the 'Pangram' exercise in this file. Make the tests in
`pangram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/pangram` directory.
=end

# a 'Pangram' is a sentence using every letter of the alphabet at least once.
class Pangram
  ALPHABET = ('a'..'z').to_a
  def self.pangram?(sentence)
    sentence.downcase.chars.reject { |w| w =~ /\W|\d|_/ }.uniq.sort == ALPHABET
  end
end
