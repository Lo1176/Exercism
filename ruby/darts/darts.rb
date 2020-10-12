=begin
Write your code for the 'Darts' exercise in this file. Make the tests in
`darts_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/darts` directory.
=end

class Darts
  attr_reader :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def score
    # (x-a)² +(y-b)² = R²
    # Centre(0, 0)
    # x²+y² = R²
    target = x**2 + y**2
    if target <= 1
      10
    elsif target <= 25 && target > 1
      5
    elsif target <= 100 && target > 25
      1
    else
      0
    end
  end
end
