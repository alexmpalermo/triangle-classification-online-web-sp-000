class Triangle
  
  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end 
  
  def kind
    if @length1 <= 0 || @length2 <= 0 || @length3 <= 0 
      begin
    raise TriangleError
    rescue TriangleError => error 
    puts error.message
  end
  elsif ((@length1 + @length2) <= @length3) || ((@length1 + @length3) <= @length2) || ((@length3 + @length2) <= @length1)
    raise TriangleError
  end
    elsif @length1 == @length2 && @length2 == @length3
      return :equilateral
    elsif @length1 == @length2 || @length1 == @length3 || @length2 == @length3
    return :isosceles
    else 
    return :scalene
  end
  end 
  
  class TriangleError < StandardError
    
  end
  
end
