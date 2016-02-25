File.open(ARGV[0]).each_line do |line| 
	if line != "\n"
		inputArray = line.split(",")
		
			inputArray[1].delete!("\n")

		puts inputArray[0].match(/#{inputArray[1]}/) ? 1 : 0
	end

end
#medium codeeval challenge using reg ex and ternary operators of ruby