# Try the fizzbuzz problem:  Write a program that, for integers between 1 and 100:
# prints "fizz" if the integer is divisible by 3
# prints "buzz" if the integer is divisible by 5
# prints "fizzbuzz" if the int is divisible by both
# prints the integer itself if none of the above is true

for var in range(1,1000000):
    if (var % 3 == 0) and (var % 5 == 0):
        print("FizzBuzz")
    elif var % 3 == 0:
        print("Fizz")
    elif var % 5 == 0:
        print("Buzz")
    else:
        print(var)
