# Let's build a robot barista...

#Define the menu and prices
menu = ("coffee, tea, and crumpets")
tea_price = 8
coffee_price = 10
crumpet_price = 12

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
if order == "crumpets":
    special_crumpet = input("Do you want whipped cream? It's an extra $3.\n")
    if special_crumpet == "no":
        item_price = crumpet_price
    else:
        item_price = (int(crumpet_price) + 3)
elif order == "coffee":
    item_price = coffee_price
elif order == "tea":
    item_price = tea_price
else:
    print("We don't serve that.  Buzz off.")
    exit()

# Calc bill and Give the customer the bad news
bill = item_price * number_ordered
print("Ok, " + name + ". Let me get your order ready for you.")
print("Your total today will be $" + str(bill))
print("Now go over there and wait.")