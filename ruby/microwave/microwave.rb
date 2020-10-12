=begin
Write your code for the 'Microwave' exercise in this file. Make the tests in
`microwave_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/microwave` directory.
=end

class Microwave
  attr_reader :time
  def initialize(time)
    @time = time
  end

  def timer
    time < 100 ? small_time : big_time
  end

  private

  def small_time
    second = time % 60
    seconds = second < 10 ? "0#{second}" : second

    minute = time / 60
    minutes = minute < 10 ? "0#{minute}" : minute

    "#{minutes}:#{seconds}"
  end

  def big_time
    seconds = "#{time.to_s[-2]}#{time.to_s[-1]}"
    if time.to_s[-4].nil?
      minutes = "0#{time.to_s[-3]}"
    else
      minutes = "#{time.to_s[-4]}#{time.to_s[-3]}"
    end
    "#{minutes}:#{seconds}"
  end
end
