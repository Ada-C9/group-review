# Methods are NOT Closures

greeting = "Hello!"

def welcome
  puts greeting
end

3.times do
  salutation = "Hola"
  puts greeting
end

puts salutation

array1 = [1, 2, 3]

array_bigger = []
array1.each do |n|
  array_bigger << n * 10
end
