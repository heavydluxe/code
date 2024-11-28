# Try the fizzbuzz problem:  Write a program that, for integers between 1 and 100:
# prints "fizz" if the integer is divisible by 3
# prints "buzz" if the integer is divisible by 5
# prints "fizzbuzz" if the int is divisible by both
# prints the integer itself if none of the above is true

for problem in range(1,1000000):
    if (problem % 3 == 0) and (problem % 5 == 0):
        print("FizzBuzz")
    elif problem % 3 == 0:
        print("Fizz")
    elif problem % 5 == 0:
        print("Buzz")
    else:
        print(problem)