=begin
Write your code for the 'Space Age' exercise in this file. Make the tests in
`space_age_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/space-age` directory.
=end

EARTH = 31_557_600
MERCURY = EARTH * 0.2408467
VENUS = EARTH * 0.61519726
MARS = EARTH * 1.8808158
JUPITER = EARTH * 11.862615
SATURN = EARTH * 29.447498
URANUS = EARTH * 84.016846
NEPTUNE = EARTH * 164.79132

# class SpaceAge
class SpaceAge
  attr_reader :age
  def initialize(age)
    @age = age
  end

  def on_earth
    age_on_planet(EARTH)
  end

  def on_mercury
    age_on_planet(MERCURY)
  end

  def on_venus
    age_on_planet(VENUS)
  end

  def on_mars
    age_on_planet(MARS)
  end

  def on_jupiter
    age_on_planet(JUPITER)
  end

  def on_saturn
    age_on_planet(SATURN)
  end

  def on_uranus
    age_on_planet(URANUS)
  end

  def on_neptune
    age_on_planet(NEPTUNE)
  end

  private

  def age_on_planet(planet)
    age.fdiv(planet).round(2)
  end
end
