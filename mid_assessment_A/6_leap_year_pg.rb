# Design a program to check if a given year is a leap year or not.

def leap_year?(year)
  # A leap year : divisible by 4
  #One more case, If the year is divisible by 100, it must also be divisible by 400
  (year % 4 == 0) && (year % 100 != 0 || year % 400 == 0)
end

# Example: Check if 2024 is a leap year
year_to_check = 2025
result = leap_year?(year_to_check)

puts "#{year_to_check} is #{result ? 'a leap' : 'not a leap'} year." #ternary to check leap/not leap with 1/0
