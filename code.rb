require 'benchmark'

COINS = [100, 75, 50, 25, 10, 5, 1]

def minimum_coins(number)
  number_of_coins = 0

  COINS.each do |coin|
    coins = (number / coin)
    number_of_coins += coins
    number -= coins * coin
  end

  return number_of_coins
end

puts minimum_coins(35)
puts minimum_coins(37)
puts minimum_coins(101)

Benchmark.bm(30) do |x|
  x.report("35:") { minimum_coins(35) }
  x.report("37:") { minimum_coins(37) }
  x.report("250:") { minimum_coins(250) }
end
