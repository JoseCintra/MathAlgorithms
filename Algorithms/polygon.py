    import math
    class Polygon:
        def __init__(self,nbrsides):
            self.nbr_sides = nbrsides
     
        def whoamI(self):
            if self.nbr_sides == 3:
                return "Triangle"
            elif self.nbr_sides == 4:
                return "Rectangle"
            else: return "Polygon"
     
        def howmanysides(self):
            return self.nbr_sides
     
        def area(self):
            return "No Area"
     
        def perimeter(self):
            return "No Perimeter"
     
     
     
    class triangle(Polygon):
        def __init__(self,a,b,c):
            Polygon.__init__(self, 3)
            self.a = a
            self.b = b
            self.c = c
     
        def area(self):
            s = (self.a + self.b + self.c)/2
            area = math.sqrt(s*((s-self.a)*(s-self.b)*(s-self.c)))
            return area
        
     
        def perimeter(self):
            return self.a + self.b + self.c
     
     
    class rectangle(Polygon):
        def __init__(self,breadth,length):
            Polygon.__init__(self, 4)
            self.breadth = breadth
            self.length = length
     
        def area(self):
            return self.length * self.breadth
     
        def perimeter(self):
            return 2 * (self.length + self.breadth)
     
     
     
     
    def main():
        tri1=triangle(2,2,2)
        rect=rectangle(2,3)
        tri2=triangle(3,3,3)
        figures = [tri1,rect,tri2]
        for fig in figures:
            print ("Type of Polygon =>", fig.whoamI())
            print ("Sides =", fig.howmanysides())
            print ("Area =", fig.area())
            print ("Perimeter =", fig.perimeter())
            