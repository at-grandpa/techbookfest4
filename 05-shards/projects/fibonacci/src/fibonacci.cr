require "big"
require "./fibonacci/*"

module Fibonacci
  @@numbers = [BigInt.new(0), BigInt.new(1)]

  def self.number(n : Int)
    negative = (n < 0)
    even = n.even?
    _n = n.abs
    while @@numbers.size < _n + 1
      @@numbers << @@numbers[-1] + @@numbers[-2]
    end
    if negative && even
      -@@numbers[_n]
    else
      @@numbers[_n]
    end
  end
end
