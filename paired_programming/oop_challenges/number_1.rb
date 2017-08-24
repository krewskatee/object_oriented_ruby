p "Enter your favorite food:"
foods = []

5.times do
  p "Enter a food:"
  input = gets.chomp
  foods << input
end

p foods

count = 1
foods.each do |food|
  puts count.to_s + ". I love " + food
  count += 1
end

count = 0

while count <= 10
  p count
  count += 1
end

result = false
unless result
  puts "HELLO!"
end
