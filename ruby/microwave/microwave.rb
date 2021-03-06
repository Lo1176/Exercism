

# A Microwave Class which convert the buttons entered on the microwave panel to their timer equivalent.
class Microwave
  attr_reader :time
  def initialize(time)
    @time = time
  end

  # the cleaver way :
  # -----------------------
  # attr_reader :time
  # def initialize(sequence)
  #   # format the sequence in a digital number with 4 dizaines 0000
  #   i = format('%04d', sequence)
  #   sec = i[2..3].to_i % 60
  #   min = i[2..3].to_i / 60 + i[0..1].to_i
  #   # min:sec in %02d format
  #   @timer = '%02d:%02d'%[min, sec]
  # end
  # -----------------------

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
    minutes = time.to_s[-4].nil? ? "0#{time.to_s[-3]}" : "#{time.to_s[-4]}#{time.to_s[-3]}"
    "#{minutes}:#{seconds}"
  end
end
