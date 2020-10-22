=begin
Convert a phrase to its acronym.

like Portable Network Graphics to its acronym (PNG).
=end

class Acronym
  def self.abbreviate(phrase)
    phrase.scan(/\b\w/).join.upcase
  end
end
