# Implement a program to check if a given string is a palindrome or not.
def palindrome?(str)
  rev = str.reverse
  str == rev
end

print "Enter a word:-->  "
g = gets.chomp.strip #if the string contains new line or some unwanted spaces


if palindrome?(g)
  p "the string `#{g}` is a palindrome"
else
  p "the string `#{g}` is not a palindrome"
end
