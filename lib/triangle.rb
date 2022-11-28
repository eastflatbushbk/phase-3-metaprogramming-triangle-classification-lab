class Triangle
  # write code here
  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one,side_two,side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end
  def kind

    sum1 = self.side_one + self.side_two    
    sum2 = self.side_two + self.side_three
    sum3 = self.side_one + self.side_three

    if (self.side_one <= 0 || self.side_two <= 0 || self.side_three <= 0 || sum1 <=self.side_three || sum2 <=self.side_one || sum3 <=self.side_two )

        raise TriangleError
    
      elsif ( self.side_one == self.side_two && self.side_two == self.side_three && self.side_one == self.side_three && self.side_one != 0)
      return :equilateral
         
    elsif (self.side_one == self.side_two || self.side_one == self.side_three || self.side_two == self.side_three && self.side_one != 0 )
           return :isosceles
         
    else
          return :scalene
    end
  end  

  class TriangleError < StandardError
    # triangle error code
    def message
      "There are not valid sizes"
    end
  end
end
