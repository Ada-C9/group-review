# Cover enumerables topics:
# - map

# Map is many-to-many enumerable method

snowboards = [
  { name: "Ultra Snowboard 5", color: "white", size: :M, price: 50.00 },
  { name: "Waverunner", color: "red", size: :L, price: 75.00 }
]



max_snowboard_price = snowboards.reduce(-1) do |max_price, snowboard|
  price = snowboard[:price]
  if price > max_price
    max_price = price
  end

  max_price
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
