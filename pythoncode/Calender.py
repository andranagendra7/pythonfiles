
import calendar
# Enter the month and year
yy = int(input("Enter year: "))
mm = int(input("Enter month: "))

print(calendar.month(yy,mm))

if(yy%100==0):
    if (yy % 400 == 0):
        print(yy, "is  leap year")
    else:
        print(yy, "is not leap year")
else:
    if (yy % 4 == 0):
        print(yy, "is  leap year")
    else:
        print(yy, "is not leap year")
