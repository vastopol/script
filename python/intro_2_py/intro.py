# 
name = raw_input("please enter your name\n")
print(name)

age = raw_input("enter age\n")
year = 2017 - int(age)
print("born in " + str(year))

i = 1
while i < 10:
	print(i)
	i += 1
print("out of the while")