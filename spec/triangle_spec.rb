require('rspec')
require('triangle')

describe(Triangle) do
  describe('#triangle?') do
    it('returns false if it is not an equilateral') do
      test_triangle = Triangle.new(30,30,20)
      expect(test_triangle.triangle?()).to(eq(false))
    end
    it('returns true if it is an equilateral') do
      test_triangle = Triangle.new(30,30,30)
      expect(test_triangle.triangle?()).to(eq(true))
    end
  end
end
