import random, sys

var = random.randint(1, 20)
tries = 1
print("Variable is", var)

print("I'm thinking of a # between 1 and 20")
guess = int(input("What's your guess? "))

while guess != var:
    if guess < var:
        tries = tries + 1
        guess = int(input("Your guess was too low. Try again! "))
    elif guess > var:
        tries = tries + 1
        guess = int(input("Your guess was too high. Try again! "))

print("Congrats. Took you", tries, "guess" )