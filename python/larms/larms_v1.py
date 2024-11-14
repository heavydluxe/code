# This is the Lame Automatic Rehearsal Meal Selector (aka LARMS)
# Version B for Bad  

import sys, time, random

def main():
    eateries = ['NinetyNine', 'Chilis', 'Weathervane', 'LuiLui', 'Salt Hill']
    print("The possible restaurants I have:")
    print (eateries)
    ready = input("Shall I make a selection from that list? (Y or N): ")
    if ready == 'Y':
        selection(eateries)
    else:
        print("Quitting for now, then")
        sys.exit()

def selection(var):
    print("Throwing the restaurants into a baggie")
    time.sleep(1)
    print("Shuffling things around...")
    time.sleep(1)
    print("And the winner is... *drumroll*")
    time.sleep(1)
    winner=random.choice(var)
    print(winner, end="")
    print("!!! Enjoy your meal with friends, Master.")
    
main()

# Future improvements:
# 1. Read restaurants from file (or database)
# 2. Include 'weights' for choices
# 3. Adjust weights based on winners/losers and export to file for next time