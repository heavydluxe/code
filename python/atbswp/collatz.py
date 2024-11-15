import sys

def main():
    print("I'll do some collatz-y numerical things for you.")
    
    try:
        var = int(input("Give me a number... It's best if your number is greater than 2: "))
    except ValueError:
        print("That's not a number, fool.")
        sys.exit()    

    while var != 1:
        print(var)
        var = collatz(var)

    print(var)

def collatz(number):
    if number % 2 == 0:
        number = int(number / 2)
    else:
        number = int(3 * number + 1)
    return number
    
main()
            