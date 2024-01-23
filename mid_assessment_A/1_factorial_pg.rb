# Write a program to calculate the factorial of a given number.



# Method 1 to calculate factorial
def fact(n)
  if n<=1
    return 1
  end
  n * fact(n-1)
end


p fact(5)
