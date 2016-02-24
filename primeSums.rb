#prime sums
require 'prime'

sumTotal = 0

primes = Prime.first 1000

for i in 0..primes.length-1
	sumTotal = sumTotal + primes[i]
end


puts sumTotal