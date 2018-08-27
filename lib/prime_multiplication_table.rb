require_relative 'prime_numbers'
require_relative 'multiplication_table'
require_relative 'multiplication_table_to_tabular_data_transformer'
require_relative 'stdout_table_writer'

class PrimeMultiplicationTable
  def initialize(number_of_primes)
    @number_of_primes = number_of_primes
  end

  def run
    generate_primes
    generate_multiplication_table
    transform_multiplication_table
    write_to_stdout
  end

  def generate_primes
    @primes = PrimeNumbers.list(@number_of_primes)
  end

  def generate_multiplication_table
    @multiplication_table = MultiplicationTable.new(@primes)
  end

  def transform_multiplication_table
    @tabular_data = MultiplicationTableToTabularDataTransformer.new(@multiplication_table).transform
  end

  def write_to_stdout
    StdoutTableWriter.new(@tabular_data).print
  end
end
