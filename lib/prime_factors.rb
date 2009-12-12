module PrimeFactors
  def self.of number
    factors = []
    candidate = 2
    while number > 1
      while number % candidate == 0
        factors << candidate
        number /= candidate
      end
      candidate += 1
    end
    factors
  end
end
