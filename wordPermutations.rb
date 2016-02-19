#HARD problem solved!

File.open(ARGV[0]).each_line do |line| 
finalArrayToSort = []
characterArray = line.split("")

if characterArray[characterArray.length-1] == "\n"
characterArray.pop 
end

characterArray = characterArray.permutation.to_a


stringFinal = ""

for i in 0..characterArray.length-1
	tmpArray = characterArray[i]
	tmpString = ""
	for x in 0..tmpArray.length-1
		tmpString = tmpString + tmpArray[x].to_s
	end
	finalArrayToSort[i] = tmpString
end

finalArrayToSort.sort!.reverse

for i in 0..finalArrayToSort.length-1
	stringFinal = stringFinal + finalArrayToSort[i].to_s 
	if i != finalArrayToSort.length-1
		stringFinal = stringFinal + ","
	end
end
puts stringFinal


end