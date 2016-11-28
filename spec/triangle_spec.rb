require('rspec')
require('triangle')

describe(Triangle) do
  describe('#triangle?') do
    # it('returns not an equilateral') do
    #   test_triangle = Triangle.new(30,35,20)
    #   expect(test_triangle.triangle?()).to(eq("NOT an equilateral"))
    # end
    it('returns true if it is an equilateral') do
      test_triangle = Triangle.new(30,30,30)
      expect(test_triangle.triangle?()).to(eq("is an equilateral"))
    end
    it('returns true if is an isosceles') do
      test_triangle = Triangle.new(30,30,10)
      expect(test_triangle.triangle?()).to(eq("is an isosceles"))
    end
  end
end
