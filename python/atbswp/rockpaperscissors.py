# A simple rock paper scissors game
import random, sys

#Define key variables
wins = 0
losses = 0
draws = 0
play = 'Y'
gamelist = ["rock", "paper", "scissors"]

# The Game itself
print("Hello, let's play rock, paper, scissors!")
while play == 'Y':
    print("Your record so far is ",wins,"W, ",losses,"L, ",draws,"D.")
    botChoice = random.choice(gamelist)
    print("I've made my choice, now you make yours. Rock, paper, or scissors?")
    playerChoice=input()

    if playerChoice == "rock":
        if botChoice == "rock":
            print("I also chose rock. This is a draw.")
            draws = draws + 1
            play = input("Would you like to play again? Y or N : ")
        elif botChoice == "paper":
            print("I chose paper, so you lose!")
            losses = losses + 1
            play = input("Would you like to play again? Y or N : ")
        elif botChoice == "scissors":
            print("I chose scissors, so you win!")
            wins = wins + 1
            play = input("Would you like to play again? Y or N : ")
    
    if playerChoice == "paper":
        if botChoice == "paper":
            print("I also chose paper. This is a draw.")
            draws = draws + 1
            play = input("Would you like to play again? Y or N : ")
        elif botChoice == "scissors":
            print("I chose scissors, so you lose!")
            losses = losses + 1
            play = input("Would you like to play again? Y or N : ")
        elif botChoice == "rock":
            print("I chose rock, so you win!")
            wins = wins + 1
            play = input("Would you like to play again? Y or N : ")

    if playerChoice == "scissors":
        if botChoice == "scissors":
            print("I also chose scissors. This is a draw.")
            draws = draws + 1
            play = input("Would you like to play again? Y or N : ")
        elif botChoice == "rock":
            print("I chose rock, so you lose!")
            losses = losses + 1
            play = input("Would you like to play again? Y or N : ")
        elif botChoice == "paper":
            print("I chose paper, so you win!")
            wins = wins + 1
            play = input("Would you like to play again? Y or N : ")

print("Thanks for the game, your record was:")
print(wins,"W, ",losses,"L, ",draws,"D.")