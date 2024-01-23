# Create a program to count the number of vowels and consonants in a given string


def vowels_and_consonants(string)
  vowels_count = string.downcase.scan(/[aeiou]/).length #contains only vowels
  consonants_count = string.downcase.scan(/[^aeiou\s\d\W]/).length # contains everything excluding vowels,digits
  return vowels_count,consonants_count # u need to use return keyword, when you want to pass
end


print "Give a string as an input :--> "
string = gets.chomp
v,c = vowels_and_consonants(string)

puts "Count of vowels : #{v}"
puts "Count of consonants : #{c}"
