File.open(ARGV[0]).each_line do |line| 

firstSplitArray = line.split(" : ")
firstSplitArray[1].delete!("\n")


elementArray = firstSplitArray[0].split(" ")
swapListArray = firstSplitArray[1].split(", ")

positionArray = []

for i in 0..swapListArray.length-1
	positionArray[i] = swapListArray[i].split("-")

end

positionOne = positionArray[1]

 puts positionArray[1]

end