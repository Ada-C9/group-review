# Cover enumerables topics:
# - map

# Map is many-to-many enumerable method

snowboards = [
  { name: "Ultra Snowboard 5", color: "white", size: :M, price: 50.00 },
  { name: "Waverunner", color: "red", size: :L, price: 75.00 }
]

weekly_prices = snowboards.map do |s|
  "#{s[:name]} - #{s[:price] * 7}"
end

puts "Weekly rental prices: "
puts weekly_prices

# - reduce
# - filter / select
# - all? / any?
