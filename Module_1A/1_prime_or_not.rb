#1. WAP to display number is prime or not
def is_prime?(n)
    return false if n<2
    #  The enumerable's way
    # Check if there are no factors of 'num' in the range
    # from 2 to the square root of 'num', i.e square root check for PN[prime numbers]
    #  determining if 'num' is a prime number

    (2..Math.sqrt(n)).
    none?{|i| n%i == 0}
end

n = 5
if is_prime?(n)
    puts "The number :#{n} is prime"
else
    puts "The number :#{n} is not-sprime"
end

