require 'spec'
$:.unshift File.expand_path(File.dirname(__FILE__) + '/../lib')
require 'prime_factors'

describe PrimeFactors do
  {
    1 => [],
    2 => [2],
    3 => [3],
    4 => [2, 2],
    5 => [5],
    6 => [2, 3],
    7 => [7],
    8 => [2, 2, 2],
    9 => [3, 3],
    10 => [2, 5],
    23 * 7 => [7, 23],
    9829 => [9829],
    24371 * 24373 => [24371, 24373]
  }.each do |number, factors|
    it "factors #{number}" do
      PrimeFactors.of(number).should == factors
    end
  end
end
