=begin
Convert a phrase to its acronym.

like Portable Network Graphics to its acronym (PNG).
=end

class Acronym
  def self.abbreviate(phrase)
    # phrase.gsub(/\w/).map { |word| word[0] }.join.upcase
    phrase.split(/\W/).reject { |w| w == '' }.map { |word| word[0] }.join.upcase
  end
end
