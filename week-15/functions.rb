array = [1, 2, 3]
#
# array.each do |n|
#   puts n * 10
# end

def my_each(array, &block)
  puts "I'm in a cool method!"
  array.each(&block)
  puts "I'm finishing this cool method!"
end

my_each(array) do |n|
  puts n * 100
end

my_each(array) do |n|
  puts n * n
end
