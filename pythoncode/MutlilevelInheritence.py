class Animal:
    def eat(self):
        print ("all animal eats")
class Dog(Animal):
    def bark(self):
        print ("all dogs bark")
class BabyDog(Dog):
    def sleep(self):
        print ("all babydog sleep")

d=BabyDog()
d.sleep()
d.bark()
d.eat()