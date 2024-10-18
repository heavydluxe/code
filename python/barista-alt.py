# Let's build a robot barista...

#Define the menu and prices
menu = ("coffee, tea, and crumpets")

# Introduce yourself and get customer name
print("Hi, I'm a robot barista.")
name = (input("What's your name, homie? "))

# I don't like Ben
if name == "Ben":
    evil=input("Are you evil? Yes or No. \n")
    if evil == "Yes":
        print("You are a jerk, Ben. I don't like you.")
        exit()
    else:
        print("Ok, Ben, you're alright with me, then")
else:
    print("Hi there, " + name + ". How's it hanging?")

#Take an order
print("What would you like today? We have " + menu + ".")
order = input()
number_ordered = int(input("How many " + order + " would you like?"))

#Calculate the total cost
#tea_price = 8
#coffee_price = 10
#crumpet_price = 12
if order == "crumpets":
    price = 12
elif order == "coffee":
    price = 10
else:
    price = 8

bill = price * number_ordered

#Give the customer the bad news
print("Ok, " + name + ". Let me get your order ready for you.")
print("Your total today will be $" + str(bill))
print("Now go over there and wait, you slob.")