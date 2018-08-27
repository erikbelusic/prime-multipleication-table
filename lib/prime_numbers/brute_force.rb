module PrimeNumbers
  module BruteForce
    extend self

    def list(size)
      prime_numbers = []
      current_integer = 0

      until prime_numbers.count == size
        current_integer += 1
        prime_numbers << current_integer if is_prime?(current_integer)
      end

      prime_numbers
    end

    def is_prime?(number)
      return false if number <= 1
      return true if number_of_factors_for(number) == 2
      return false
    end

    private
    def number_of_factors_for(number)
      factors_for(number).count
    end

    def factors_for(number)
      (1..number).select {|n| number % n == 0}
    end
  end
end