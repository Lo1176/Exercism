# Calculate the moment when someone has lived for 10^9 seconds.
class Gigasecond
  GIGASECOND = 10**9
  # 10**9 is faster to execute than 1e9
  def self.from(date)
    date + GIGASECOND
  end
end
