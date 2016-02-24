File.open(ARGV[0]).each_line do |line| 
	splitArray = line.split(" | ")
	gridSizeArray = splitArray[0].split("x")
	rows = gridSizeArray[0].to_i
	columns = gridSizeArray[1].to_i

	coordinateArray = splitArray[1].split(" ")
	xCoordinate = coordinateArray[0].to_i
	yCoordinate = coordinateArray[1].to_i

def multiArray(rows, columns)
	arrayCreate = Array.new(rows)
	arrayCreate.map! {Array.new(columns)}
end
	travelBoard = multiArray(rows, columns)
	travelBoard[xCoordinate][yCoordinate] = 2
	travelBoard[0][0] = "astring"

	puts travelBoard[xCoordinate][yCoordinate]
	puts travelBoard[0][0]

	found = 0
	start = 0
	finish = 0
	nutCount = 1

	while found = 0 do



		if  start == xCoordinate && finish = yCoordinate then
			found = 1
		end
	end


end


