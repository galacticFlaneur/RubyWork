File.open(ARGV[0]).each_line do |line| 

	digitArray = line.split("")
	

	if digitArray[digitArray.length-1] == "\n"
		digitArray.pop 
	end

	totalSum = 0

	for i in 0..digitArray.length-1
		totalSum = 	totalSum + digitArray[i].to_i
	end

	puts totalSum

end
