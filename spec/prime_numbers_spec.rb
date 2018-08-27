require 'prime_numbers'
require 'prime_numbers/brute_force'

describe PrimeNumbers do
  describe '#list' do
    it 'returns an array' do
      expect(PrimeNumbers.list(0)).to be_a(Array)
      expect(PrimeNumbers.list(0, :brute_force)).to be_a(Array)
      expect(PrimeNumbers.list(1)).to be_a(Array)
      expect(PrimeNumbers.list(1, :brute_force)).to be_a(Array)
      expect(PrimeNumbers.list(10)).to be_a(Array)
      expect(PrimeNumbers.list(10, :brute_force)).to be_a(Array)
    end

    it 'generates a list of the first 10 prime numbers' do
      first_ten_primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]

      expect(PrimeNumbers.list(10)).to eq(first_ten_primes)
      expect(PrimeNumbers.list(10, :brute_force)).to eq(first_ten_primes)
    end

    it 'generates a list of the first 100 prime numbers' do
      first_hundred_primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199, 211, 223, 227, 229, 233, 239, 241, 251, 257, 263, 269, 271, 277, 281, 283, 293, 307, 311, 313, 317, 331, 337, 347, 349, 353, 359, 367, 373, 379, 383, 389, 397, 401, 409, 419, 421, 431, 433, 439, 443, 449, 457, 461, 463, 467, 479, 487, 491, 499, 503, 509, 521, 523, 541]

      expect(PrimeNumbers.list(100)).to eq(first_hundred_primes)
      expect(PrimeNumbers.list(100, :brute_force)).to eq(first_hundred_primes)
    end

    it 'throws an exception when trying to generate more than 1000 primes' do
      expect{PrimeNumbers.list(1001)}.to raise_error(ExceedsMaxValueError)
    end
  end

  describe PrimeNumbers::BruteForce do
    describe '#is_prime?' do
      it 'is true for prime numbers' do
        expect(PrimeNumbers::BruteForce.is_prime?(2)).to be true
        expect(PrimeNumbers::BruteForce.is_prime?(3)).to be true
        expect(PrimeNumbers::BruteForce.is_prime?(5)).to be true
        expect(PrimeNumbers::BruteForce.is_prime?(7)).to be true
        expect(PrimeNumbers::BruteForce.is_prime?(11)).to be true
        expect(PrimeNumbers::BruteForce.is_prime?(13)).to be true
        expect(PrimeNumbers::BruteForce.is_prime?(17)).to be true
        expect(PrimeNumbers::BruteForce.is_prime?(19)).to be true
        expect(PrimeNumbers::BruteForce.is_prime?(23)).to be true
        expect(PrimeNumbers::BruteForce.is_prime?(29)).to be true
        expect(PrimeNumbers::BruteForce.is_prime?(31)).to be true
        expect(PrimeNumbers::BruteForce.is_prime?(37)).to be true
        expect(PrimeNumbers::BruteForce.is_prime?(41)).to be true
        expect(PrimeNumbers::BruteForce.is_prime?(43)).to be true
        expect(PrimeNumbers::BruteForce.is_prime?(47)).to be true
        expect(PrimeNumbers::BruteForce.is_prime?(53)).to be true
        expect(PrimeNumbers::BruteForce.is_prime?(59)).to be true
        expect(PrimeNumbers::BruteForce.is_prime?(61)).to be true
        expect(PrimeNumbers::BruteForce.is_prime?(67)).to be true
        expect(PrimeNumbers::BruteForce.is_prime?(71)).to be true
        expect(PrimeNumbers::BruteForce.is_prime?(73)).to be true
        expect(PrimeNumbers::BruteForce.is_prime?(79)).to be true
      end

      it 'is false for non prime numbers' do
        expect(PrimeNumbers::BruteForce.is_prime?(1)).to be false
        expect(PrimeNumbers::BruteForce.is_prime?(4)).to be false
        expect(PrimeNumbers::BruteForce.is_prime?(6)).to be false
        expect(PrimeNumbers::BruteForce.is_prime?(8)).to be false
        expect(PrimeNumbers::BruteForce.is_prime?(9)).to be false
        expect(PrimeNumbers::BruteForce.is_prime?(10)).to be false
        expect(PrimeNumbers::BruteForce.is_prime?(12)).to be false
        expect(PrimeNumbers::BruteForce.is_prime?(14)).to be false
        expect(PrimeNumbers::BruteForce.is_prime?(15)).to be false
        expect(PrimeNumbers::BruteForce.is_prime?(16)).to be false
        expect(PrimeNumbers::BruteForce.is_prime?(18)).to be false
        expect(PrimeNumbers::BruteForce.is_prime?(20)).to be false
        expect(PrimeNumbers::BruteForce.is_prime?(21)).to be false
        expect(PrimeNumbers::BruteForce.is_prime?(22)).to be false
        expect(PrimeNumbers::BruteForce.is_prime?(24)).to be false
        expect(PrimeNumbers::BruteForce.is_prime?(25)).to be false
        expect(PrimeNumbers::BruteForce.is_prime?(26)).to be false
        expect(PrimeNumbers::BruteForce.is_prime?(27)).to be false
        expect(PrimeNumbers::BruteForce.is_prime?(28)).to be false
        expect(PrimeNumbers::BruteForce.is_prime?(30)).to be false
      end
    end
  end
end