class Triangle
  define_method(:initialize) do | side1, side2, side3 |
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  define_method(:triangle) do
    if (@side1 + @side2 <= @side3) or
       (@side2 + @side3 <= @side1)
      # (@side1 + @side3 <= @side2)
      triangle = "NOT a triangle"
    elsif @side1.eql?(@side2) and @side2.eql?(@side3)
      triangle = "is an equilateral"
    elsif (@side1.eql?(@side2) and @side2 != @side3) or
          (@side1.eql?(@side3) and @side2 != @side3) or
          (@side2.eql?(@side3) and @side2 != @side1)
      triangle = "is an isosceles"
    elsif (@side1 != @side2 and @side1 != @side3) or
          (@side2 != @side1 and @side2 != @side3) or
          (@side3 != @side1 and @side3 != @side2)
      triangle = "is an scalene"
    end
   triangle.to_s()
  end
end
