require 'date'

File.open(ARGV[0]).each_line do |line|
	code_map = {"Jan" => 1, "Feb" => 2,"Mar" => 3,"Apr" => 4,"May" => 5,"Jun" => 6,"Jul" => 7,"Aug" => 8,"Sep" => 9,"Oct" => 10,
				"Nov" => 11, "Dec" => 12}
	last_day = {"Jan" => 31, "Feb" => 28,"Mar" => 31,"Apr" => 30,"May" => 31,"Jun" => 30,"Jul" => 31,"Aug" => 31,"Sep" => 30,"Oct" => 31,
				"Nov" => 30, "Dec" => 31}
	workingPeriods = {}
	
	fullYearYear = line.split("; ")
	month = 0
	year = 0
	dateCreated = Date.new
	monthEnd = 0
	yearend = 0

	dates = Array.new


	for i in 0..fullYearYear.length-1
		monthYear = fullYearYear[i].split("-")
		#elements [[Feb 2004], [Dec 2009]]

			for x in 0..monthYear.length-1

				if x % 2 == 1
					monthYearArray = monthYear[x].split(" ")
					# elements [Feb], [2004]
					month = code_map[monthYearArray[0]].to_i
					year = monthYearArray[1].to_i

					last_dayEnd = last_day[monthYearArray[0]].to_i
					dateCreated = Date.new(year, month, last_dayEnd)
					dates.push(dateCreated)
				else
					#construct the proper date for start vs end
					monthYearArray = monthYear[x].split(" ")
					# elements [Feb], [2004]
					month = code_map[monthYearArray[0]].to_i
					year = monthYearArray[1].to_i

					dateCreated = Date.new(year, month, 1)
					dates.push(dateCreated)
				end

			end
	end

	i = 0
	while i < dates.length-1 do
		tmp = dates[i]
		tmp2 = dates[i+1]

		workingPeriods.store(tmp, tmp2)
		i=i+2
	end

	workingPeriods.each {|key, value| puts "#{key} is #{value}"}
	workingPeriods.sort.to_h

	puts ""

	
	workingPeriods.each {|key, value| puts "#{key} is #{value}"}

	
	puts ((dates[1] - dates [0]).to_i) / 365

end