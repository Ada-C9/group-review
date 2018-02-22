# Cover enumerables topics:
# - map

# Map is many-to-many enumerable method

snowboards = [
  { name: "Ultra Snowboard 5", color: "white", size: :M, price: 50.00 },
  { name: "Waverunner", color: "red", size: :L, price: 75.00 }
]

[1,2,3,4].reduce(1000) do |sum, n|
  puts "Accumulator: #{sum}"
  puts "Array element: #{n}"
  sum + n
end

# - reduce
# Reduce is many-to-one enumerable methods
# Examples:
#  - searching / contains
#  - sum / other basic arithmetic
#  - max_by / min_by

# - filter / select
# - all? / any?
