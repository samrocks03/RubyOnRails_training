# Implement a program to check if a given string is a palindrome or not.
def palindrome?(str)
  rev = str.reverse
  str == rev
end

def palindrome_with_while?(str)
  i, j = 0, str.length - 1
  while i < j
    return false unless str[i] == str[j]
    i += 1
    j -= 1
  end
  true
end

print "Enter a word:-->  "
g = gets.chomp.strip #if the string contains new line or some unwanted spaces


# if palindrome?(g)
#   p "the string `#{g}` is a palindrome"
# else
#   p "the string `#{g}` is not a palindrome"
# end

if palindrome_with_while?(g)
  p "the string `#{g}` is a palindrome"
else
  p "the string `#{g}` is not a palindrome"
end
