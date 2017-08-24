# 3 and 5 (Two in one)

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
