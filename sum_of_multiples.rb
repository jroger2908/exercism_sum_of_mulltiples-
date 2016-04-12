class SumOfMultiples
  def initialize(*multiples)
    @multiples = multiples
  end

  def to(max)
    (0...max).select{ |num| is_multiple?(num)}.reduce(0, :+)
  end 

  def is_multiple?(num)
    @multiples.any? { |multiple| num % multiple == 0}
  end
end