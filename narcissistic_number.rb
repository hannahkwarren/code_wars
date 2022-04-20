# CodeWars URL: https://www.codewars.com/kata/5287e858c6b5a9678200083c/train/ruby

# A Narcissistic Number is a positive number which is the sum of its own digits, each raised to the power of the number
# of digits in a given base. In this Kata, we will restrict ourselves to decimal (base 10).

# The Challenge:

# Your code must return true or false (not 'true' and 'false') depending upon whether the given number is a Narcissistic
# number in base 10. This may be True and False in your language, e.g. PHP.

# Error checking for text strings or other invalid inputs is not required, only valid positive non-zero integers will be
# passed into the function.

def narcissistic_num?(num)
  # array = num.to_s.split(//)
  result = 0

  num.digits.each do |number|
    result += (number.to_i**num.digits.length)
  end

  result == num
end

p narcissistic_num?(153)
p narcissistic_num?(1652)
