# Write a program that:
# * Calculates the first 20 Fibonacci numbers.
#   * The first Fibonacci number is 0.
#   * The second Fibonacci number is 1.
#   * Every Fibonacci number after that is calculated by adding the
#     previous two Fibonacci numbers together e.g. the third Fibonacci
#     number is the result of `0 + 1`.
# * `puts`es these numbers, one per line.

i = 0

fib_1 = 0
fib_2 = 1

while i <= 10
  p fib_1
  p fib_2
  fib_1 = fib_1 + fib_2
  fib_2 = fib_1 + fib_2
  
  i += 1

end
