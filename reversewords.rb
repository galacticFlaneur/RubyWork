File.open(ARGV[0]).each_line do |line| 

	wordArray = line.split(" ")
	length = wordArray.length
	output = ""

	for i in 0..length-1
		output = output + wordArray[length-1-i].to_s + " "
	end

	puts output


end