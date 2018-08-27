require_relative '../lib/prime_numbers/brute_force'
require_relative '../lib/prime_numbers/sieve'
module PrimeNumbers
  extend self

  def algorithms
    {
        sieve: PrimeNumbers::Sieve,
        brute_force: PrimeNumbers::BruteForce
    }
  end

  def list(size, algorithm = :sieve)
    algorithms[algorithm].list(size)
  end
end