File.open(ARGV[0]).each_line do |line| 

	inputArray = line.split(",")
	inputArray[1].delete!("\n")

	characterArray = inputArray[0].split("")


	characterToFind = inputArray[1]

	rightMostPosition = -1

	for i in 0..characterArray.length-1

		if characterArray[i].eql? characterToFind 
			rightMostPosition = i
		end
		
	end

	puts rightMostPosition


end
