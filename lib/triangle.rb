class Triangle

attr_reader :length1, :length2, :length3

  def initialize(length1, length2, length3)
    @length1=length1
    @length2=length2
    @length3=length3
  end

  def kind
    if length1==length2 && length2==length3
      :equilateral

    elsif length1==length2 || length1==length3 || length2==length3
      :isosceles

    elsif length1!=length2 && length1!=length3 && length2!=length3
      :scalene
    
    elsif length1<=0 || length2 <= 0 || length3 <=0
      raise TriangleError

    elsif length1+length2<=length3 || length1+length3<=length2 || length2+length3<=length1
      raise TriangleError

    else 
      raise TriangleError

    end
  end

  class TriangleError < StandardError
    "that's not a valid triangle you moron"
  end

  
end
