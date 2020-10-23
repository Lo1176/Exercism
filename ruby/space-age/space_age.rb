=begin
Write your code for the 'Space Age' exercise in this file. Make the tests in
`space_age_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/space-age` directory.
=end

# EYIS = EARTH_YEAR_IN_SECONDS
EYIS = 31_557_600
ORBITAL_PERIODS_IN_EARTH_YEARS = {
  earth: EYIS,
  mercury: EYIS * 0.2408467,
  venus: EYIS * 0.61519726,
  mars: EYIS * 1.8808158,
  jupiter: EYIS * 11.862615,
  saturn: EYIS * 29.447498,
  uranus: EYIS * 84.016846,
  neptune: EYIS * 164.79132
}.freeze

# class SpaceAge
class SpaceAge
  attr_reader :seconds
  def initialize(seconds)
    @seconds = seconds
  end

  ORBITAL_PERIODS_IN_EARTH_YEARS.each do |planet, periods|
    define_method("on_#{planet}") do
      seconds.fdiv(periods).round(2)
    end
  end
end
