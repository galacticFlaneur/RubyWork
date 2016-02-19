File.open(ARGV[0]).each_line do |line| 
	splitArray = line.split(" | ")
	gridSizeArray = splitArray[0].split("x")
	rows = gridSizeArray[0]
	columns = gridSizeArray[1]

	coordinateArray = splitArray[1].split(" ")
	xCoordinate = coordinateArray[0]
	yCoordinate = coordinateArray[1]

def multiArray(rows, columns)
	arrayCreate = new Array.new(rows)
	arrayCreate.map! {Array.new(columns)}
	return arrayCreate
end
	travelBoard = multiArray(rows, columns)
	travelBoard[xCoordinate][yCoordinate] = 2
	travelBoard[0][0] = "astring"

	puts travelBoard[xCoordinate][yCoordinate]
	puts travelBoard[0][0]

end


