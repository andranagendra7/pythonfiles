a = int(input("Enter first number: "))

temp=a
num=0
while(a>0):
    r=a%10
    num=num+r*r*r
    a=a//10
print (num)

if(num==temp):
    print ("armstrong")
else:
    print ("not armstrong")