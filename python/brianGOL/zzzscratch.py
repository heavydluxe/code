def increment(x):
    x = x+1 
    print(x)
    return(x)

generation = 0
print("Generation is", generation)

newgen = increment(generation)

print("newgen is ",newgen)