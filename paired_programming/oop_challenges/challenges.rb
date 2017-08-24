# p "Enter your favorite food:"
# foods = []
#
# 5.times do
#   p "Enter a food:"
#   input = gets.chomp
#   foods << input
# end
#
# p foods
#
# count = 1
# foods.each do |food|
#   puts count.to_s + ". I love " + food
#   count += 1
# end
#
# count = 0
#
# while count <= 10
#   p count
#   count += 1
# end
#
# result = false
# unless result
#   puts "HELLO!"
# end

# recipes = 0
# languages = 0
# can_make_crepes = false
# can_speak_french = false
#
# puts "Sam, how many recipes can you cook?"
# recipes = gets.chomp.to_i
#
# puts "Sally, how many languages can you speak?"
# languages = gets.chomp.to_i
#
# puts "Sam, can you cook can you make crepes?"
# crepes_input = gets.chomp.downcase
#
# puts "Sally, can you speak French?"
# french_input = gets.chomp.downcase
#
# if crepes_input == "yes"
#   can_make_crepes = true
# end
#
# if french_input == "yes"
#   can_speak_french = true
# end
#
# if recipes > 10 && languages > 5
#   puts "They should date."
# end
#
# if can_make_crepes && can_speak_french
#   puts "They should marry."
# end

def is_a_valid_email?(email)
  if email.include?('.com') && email.include?('@')
    return true
end

bank_collection = []

1.times do
  valid = false
  person = {}

  p "Please enter first name:"
  person[:first_name] = gets.chomp.capitalize

  p "Please enter last name:"
  person[:last_name] = gets.chomp.capitalize

  while valid != true
    p "Please enter email:"
    user_email = gets.chomp
    if is_a_valid_email?(user_email)
      person[:email] = user_email
      valid = true
    else
      p "Invalid email, please try again."
      valid = false
    end
  end

  person[:acct] = Random.rand(1000000000..9999999999)

  bank_collection << person

end

bank_collection.each do |hash|
  hash.each do |k, v|
    p "#{k.upcase}: #{v}"
  end
end

p "Please enter an account number to receive user information:"
account_number = gets.chomp.to_i

bank_collection.each do |hash|
  hash.each do |k, v|
    if hash.has_value?(account_number)
      p "#{k.upcase}: #{v}"
    else
      p "user not found."
      break
    end
  end
end
