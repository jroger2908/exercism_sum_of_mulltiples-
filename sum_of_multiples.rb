class SumOfMultiples
  def initialize(*multiples)
    @multiples = multiples
  end

  def to(max)
    sum = 0
    for i in 0...max
      if is_multiple?(i)
        sum += i
      end  
    end
    return sum
  end 

  def is_multiple?(number)
    @multiples.any? { |multiple| number % multiple == 0}
  end
end