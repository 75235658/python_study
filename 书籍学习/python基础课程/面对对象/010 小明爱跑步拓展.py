class Person:
    def __init__(self,name,weight):
        self.name = name
        self.weight = weight

    def __str__(self):
        return "我的名字叫{0}，体重是{1:.2f}公斤".format(self.name,self.weight)

    def run(self):
        print("{0}爱跑步,跑步锻炼身体".format(self.name))
        self.weight -= 0.5
    def eat(self):
        print("{0}是吃货，吃完这顿在减肥".format(self.name))
        self.weight += 1


xiaoming = Person("xiaoming",75.0)
xiaoming.run()
xiaoming.eat()
print(xiaoming)

xiaomei = Person("xiaomei",45.0)
xiaomei.eat()
xiaomei.run()
print(xiaomei)