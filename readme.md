# Overview

The following will output a multiplication table of prime numbers to STDOUT. The number of primes generated is able to be specified up to 1000. 

# Usage

The following runs with default options, creating a multiplication table of the first 10 prime numbers. 
```
bin/prime_multiplication_table
```

Use the `-n` option to choose the number of primes  
```
bin/prime_multiplication_table -n 25
```

Saving output to a file
```
bin/prime_multiplication_table > ten_primes.txt
```

# Example Output

- [10 Primes](example_output/10_primes.txt)
- [25 Primes](example_output/25_primes.txt)
- [100 Primes](example_output/100_primes.txt)
- [1000 Primes](example_output/1000_primes.txt)

# Running tests

Rspec is used for testing. To run the test suite run

```
bundle install
```

followed by

```
rspec
```

# Addressing requirements
- [x] The program must run from the command line and print one table to STDOUT.
- [x] The first row and column of the table should have the 10 primes, with each cell containing the product of the primes for the corresponding row and column.

# Addressing notes
- Consider complexity. How fast does your code run? How does it scale?
   - The first draft used a brute force method to find the primes. This has been left in the repo to demonstrate my thought process and how concepts can be translated into code.
   - The default implementation uses a simpler implementation of The Sieve of Eratosthenes
   - In order to address run speed, we limit the number of primes to 1000. As `n` increases, even with using the Sieve algorithm, time increases quite a bit. Time writing to STDOUT also increases with the more cols/rows.
- Consider cases where we want N primes.
    - The current version supports generating a table of up to 1000 primes. It is suggested to write the output to a file when `n > 30` due to the limitations of screen size.
- Do NOT use the Prime class from stdlib (write your own code).
    - Both brute force and sieve implementations are located in `lib/prime_numbers`
- Write tests. Try to demonstrate TDD/BDD.
    - Rspec test suite exists in `spec`
- Use no other external dependencies other than those necessary for testing.
    - Check!
- Include a README.
    - That's what this file is!