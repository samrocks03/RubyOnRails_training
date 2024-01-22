# To find : Regex for mobile number, email address, name, gender(M / F) and amount

# Input sentence
sentence = "Email : striver80089@gmail.com
            Name : Striver
            Gender : M
            Amount : 4500
            Phone : 8805212169"

# Regular expressions
email_regex = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
name_regex = /\A[A-Za-z\s]+\z/
gender_regex = /\A[MF]\z/
amount_regex = /\A\d+(\.\d+)?\z/
mobile_regex = /\A\d{10}\z/

# Input sentence
sentence = "Email : striver80089@gmail.com\nName : Striver\nGender : M\nAmount : 4500\nMobile : 1234567890"

# Extracting values from the sentence
email = sentence.match(/Email : (.+)/)[1]
name = sentence.match(/Name : (.+)/)[1]
gender = sentence.match(/Gender : (.+)/)[1]
amount = sentence.match(/Amount : (.+)/)[1]
mobile_number = sentence.match(/Mobile : (.+)/)[1]

# Validating with regular expressions
email_valid = email.match?(email_regex)
name_valid = name.match?(name_regex)
gender_valid = gender.match?(gender_regex)
amount_valid = amount.match?(amount_regex)
mobile_valid = mobile_number.match?(mobile_regex)

# Output
puts "Email: #{email}, Valid: #{email_valid ? 'Yes' : 'No'}"
puts "Name: #{name}, Valid: #{name_valid ? 'Yes' : 'No'}"
puts "Gender: #{gender}, Valid: #{gender_valid ? 'Yes' : 'No'}"
puts "Amount: #{amount}, Valid: #{amount_valid ? 'Yes' : 'No'}"
puts "Mobile: #{mobile_number}, Valid: #{mobile_valid ? 'Yes' : 'No'}"
