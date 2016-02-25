#easy, multipeles - using while loop

File.open(ARGV[0]).each_line do |line| 
	inputs = line.split(",")
	#can also use .chop
	inputs[1].delete!("\n")
	n = inputs[0].to_i
	x = inputs[1].to_i
	sum = x
	while sum < n do
		sum += x
	end
	puts sum
end