class Triangle

attr_accessor :a, :b, :c
def initialize(a, b, c)
  @a = a 
  @b = b 
  @c = c
end 

def kind 
  if a == b && a == c && b == c
    :equilateral 
  elsif a == b || a == c || b == c 
    :isosceles
  else 
    :scalene 
  end
  
  if a <= 0 || b <= 0 || c <= 0
      raise TriangleError
    end

    if a + b <= c || a + c <= b || c + b <= a
      raise TriangleError
    end 
  end 
  
  
  
  
 class TriangleError < StandardError
    "Invalid triangle"
  end 
  
end 