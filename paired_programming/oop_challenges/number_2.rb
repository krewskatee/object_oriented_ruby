recipes = 0
languages = 0
can_make_crepes = false
can_speak_french = false

puts "Sam, how many recipes can you cook?"
recipes = gets.chomp.to_i

puts "Sally, how many languages can you speak?"
languages = gets.chomp.to_i

puts "Sam, can you cook can you make crepes?"
crepes_input = gets.chomp.downcase

puts "Sally, can you speak French?"
french_input = gets.chomp.downcase

if crepes_input == "yes"
  can_make_crepes = true
end

if french_input == "yes"
  can_speak_french = true
end

if recipes > 10 && languages > 5
  puts "They should date."
end

if can_make_crepes && can_speak_french
  puts "They should marry."
end
