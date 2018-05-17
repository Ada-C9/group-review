array = [1, 2, 3]
#
# array.each do |n|
#   puts n * 10
# end

def my_each(array)
  i = 0
  while i < array.length
    value = array[i]

    yield(value)

    i += 1
  end
end

my_each(array) do |n|
  puts n * 100
end

my_each(array) do |n|
  puts n * n
end
