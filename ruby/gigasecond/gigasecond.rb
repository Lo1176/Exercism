=begin
Write your code for the 'Gigasecond' exercise in this file. Make the tests in
`gigasecond_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/gigasecond` directory.
=end

class Gigasecond
  GIGASECOND = 1e9
  # 1e9 is quicker to execute than 10**10
  def self.from(date)
    date + GIGASECOND
  end
end
