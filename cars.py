class Car:
    def __init__(self,make,model,color,price):
        self.__make = make
        self.__model = model
        self.__color = color
        self.__price = price
        self.__mileage = 0
    def set_price(self, p):
        self.__price = p
    def paint(self,c):
        self.__color=c
    def show_car_info(self):
        print(f"Make: {self.__make}\nModel: {self.__model}\nColor: {self.__color}\nPrice: ${self.__price:g}\nMileage: {self.__mileage:g} miles")
    def travel(self, distance):
        self.__mileage = distance
        print(f"Car is traveling for {distance:g} miles")

car1 = Car("Porsche","718 Cayman GTS 4.0","Black",87400)
car2 = Car("Toyota","Corolla L","Red",20075)

car1.show_car_info()
car2.show_car_info()
car1.paint('Gold')
car2.paint('White')
car1.travel(7500)
car2.travel(5000)
car1.set_price(77000)
car2.set_price(15000)
car1.show_car_info()
car2.show_car_info()

#d. :)