require('rspec')
require('triangle')

describe(Triangle) do
  describe('#triangle?') do
    it('returns not an triangle') do
      test_triangle = Triangle.new(20,5,30)
      expect(test_triangle.triangle?()).to(eq("NOT a triangle"))
    end
    it('returns true if it is an equilateral') do
      test_triangle = Triangle.new(30,30,30)
      expect(test_triangle.triangle?()).to(eq("is an equilateral"))
    end
    it('returns true if is an isosceles') do
      test_triangle = Triangle.new(30,30,10)
      expect(test_triangle.triangle?()).to(eq("is an isosceles"))
    end
    it('returns true if is an scalene') do
      test_triangle = Triangle.new(15,30,10)
      expect(test_triangle.triangle?()).to(eq("is an scalene"))
    end
  end
end
