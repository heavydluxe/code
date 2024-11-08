# Implement a program in Python that prompts the user for mass as an integer 
# (in kilograms) and then outputs the equivalent number of Joules as an integer.
# Assume that the user will input an integer.

def main():
    print("Let's do some Einstein stuff, man. E=mc^2 and all that.")
    mass=int(input("Please input the mass of something in KG: "))
    print(mass, "kilograms... Alright!")
    emc2(mass)

def emc2(var):
    energy = var*(pow(300000000,2))
    print("A",var,"kg object yields",energy,"joules of energy")

main()