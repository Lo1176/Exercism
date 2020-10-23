=begin
Write your code for the 'High Scores' exercise in this file. Make the tests in
`high_scores_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/high-scores` directory.
=end

# HighScores class
class HighScores
  attr_accessor :scores
  def initialize(scores)
    @scores = scores
  end

  def list_of_scores
    scores
  end

  def latest
    scores.last
  end

  def personal_best
    scores.sort.reverse.first
  end

  def personal_top_three
    scores.sort.last(3).reverse
  end

  def latest_is_personal_best?
    latest >= personal_top_three[0]
  end
end
