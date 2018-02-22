# Cover enumerables topics:
# - map

# Map is many-to-many enumerable method

snowboards = [
  { name: "Ultra Snowboard 5", color: "white", size: :M, price: 50.00 },
  { name: "Waverunner", color: "red", size: :L, price: 75.00 }
]

snowboard_colors = snowboards.map do |s|
  s[:color]
end

puts "Snowboard colors: "
puts snowboard_colors

# - reduce
# - filter / select
# - all? / any?
