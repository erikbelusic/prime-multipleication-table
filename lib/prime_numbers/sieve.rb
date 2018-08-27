require_relative '../exceeds_max_value_error'

module PrimeNumbers
  module Sieve
    extend self

    def list(size)
      raise ExceedsMaxValueError.new('Size exceeds maximum allowed value') if size > 1000
      counter = 0
      numbers = (2..10000).to_a
      while counter < numbers.size
        numbers.reject! do |num|
          next if num == numbers[counter]
          num % numbers[counter] == 0
        end
        counter += 1
      end
      numbers.slice(0, size)
    end
  end
end