# Write a program to calculate the factorial of a given number.

# `Way-1` to calculate factorial
def fact(n)
  if n<=1
    return 1
  end
  n * fact(n-1)
end
# p fact(5)

# `Way-2` to calculate factorial
def factorial(n)
  fac = 1
  while n > 1
    fac *= n
    n -= 1
  end
  fac #return the `fac` value
end
p factorial(5)
