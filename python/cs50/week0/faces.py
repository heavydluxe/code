# In a file called faces.py, implement a function called convert that accepts a
# str as input and returns that same input with any :) converted to 🙂 (otherwise
# known as a slightly smiling face) and any :( converted to 🙁 (otherwise known 
# as a slightly frowning face). All other text should be returned unchanged.
#
# Then, in that same file, implement a function called main that prompts the 
# user for input, calls convert on that input, and prints the result.

def convert(var):
    var=var.replace(":)", "🙂")
    var=var.replace(":(", "🙁")
    print(var)

def mood(var):
    if var == ":)":
        print("You're happy")
    else:
        print("You are not happy")

def main():
    nomoji = input(str("Input some text with basic emoji: \n"))
    convert(nomoji)
    mood(nomoji)

main()