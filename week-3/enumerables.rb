# Cover enumerables topics:
# - map

# Map is many-to-many enumerable method

snowboards = [
  { name: "Ultra Snowboard 5", color: "white", size: :M, price: 50.00 },
  { name: "Waverunner", color: "red", size: :L, price: 75.00 }
]

snowboard_prices = snowboards.map do |s|
  s[:price] * 7
end

max_snowboard_price = snowboard_prices.reduce(-1) do |max_price, price|
  if price > max_price && price != 75.00
    price
  else
    max_price
  end
end

puts max_snowboard_price
# - reduce
# Reduce is many-to-one enumerable methods
# Examples:
#  - searching / contains
#  - sum / other basic arithmetic
#  - max_by / min_by

# - filter / select
# - all? / any?
