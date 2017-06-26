class Triangle

    attr_reader :side1, :side2, :side3

    def initialize( side1, side2, side3 )
      @side1 = side1
      @side2 = side2
      @side3 = side3
      puts "Side1:#{@side1}, Side2:#{@side2}, Side3:#{@side3}"
    end

    def kind
      if side1 <=0 || side2 <=0 || side3 <=0
        raise TriangleError
      elsif (side1+side2 <= side3) || (side2+side3 <=  side1) || (side1+side3 <= side2)
        raise TriangleError
      elsif side1 == side2 && side2 == side3
        :equilateral
      elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
        :isosceles
      else
        :scalene
      end

    end

end

class TriangleError < StandardError
end
