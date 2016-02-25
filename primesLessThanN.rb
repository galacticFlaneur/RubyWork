#prime sums
require 'prime'

File.open(ARGV[0]).each_line do |line| 

primePrint = ""

primes = Prime.first line.to_i
#if we use ... this is inclusive so when comparing against length we don't have to use the -1 to keep in bounds
for i in 0...primes.length
	if primes[i] < line.to_i
		primePrint += primes[i].to_s + ','
	end
end


puts primePrint.chop

end