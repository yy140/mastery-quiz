# Write a program that:
# * Calculates the "FizzBuzz sequence" from 1 to 20.
#   * For each integer between 1 and 20 (inclusive).
#     * If the number is divisible by 3, replace the number with `Fizz`.
#     * If the number is divisible by 5, replace the number with `Buzz`
#     * If the number is divisible by 3 and 5, replace the number with
#       `FizzBuzz`.
#     * If the number is divisible by neither 3 or 5, keep the number.
# * `puts`es these "FizzBuzz sequence" entries, one per line.

number = 1

while number < 21 do
    if number % 3 == 0
        'Fizz'
    elsif number % 5 == 0
        'Buzz'
    elsif (number % 5 && number % 3) == 0
        'FizzBuzz'
    else
        number
    end
number += 1
end


