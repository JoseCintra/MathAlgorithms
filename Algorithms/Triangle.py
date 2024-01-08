import math
     
class triangle():
    def __init__(self,a,b,c):
        self.a = a
        self.b = b
        self.c = c

    @property
    def a(self):
        return self.__a
    
    @property
    def b(self):
        return self.__b
    
    @property
    def c(self):
        return self.__c

    @a.setter
    def a(self, val):
        self.__a = val
     
    @b.setter
    def b(self, val):
        self.__b = val

    @c.setter
    def c(self, val):
        self.__c = val

    # Area by Heron Teorem
    def area(self):
        area = None
        s = self.semi_perimeter()
        area = math.sqrt(s*((s-self.a)*(s-self.b)*(s-self.c)))
        return area
     
    def perimeter(self):
        return self.a + self.b + self.c

    def semi_perimeter(self):
        return self.perimeter() / 2


# Data entry
print("Triangle Class\n")
a = int(input("Enter the a side of the triangle: "))
b = int(input("Enter the b side of the triangle: "))
c = int(input("Enter the c side of the triangle: "))

tri=triangle(a,b,c)
print (tri.perimeter())
print (tri.semi_perimeter())
print (tri.area())



            
            
            
            

