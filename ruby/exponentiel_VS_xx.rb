def exponentiel
  start_time = Time.new
  5_000_000.times { 1e10 }
  puts Time.new - start_time
end

def xx
  start_time = Time.new
  5_000_000.times { 10**10 }
  puts Time.new - start_time
end

puts 'exponentiel duration: 1e10'
exponentiel
puts 'exponentiel duration: 10 ** 10'
xx
