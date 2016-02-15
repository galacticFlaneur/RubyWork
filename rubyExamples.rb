ARGV.each do |line|
	code_map = {"a" => 0, "b" => 1,"c" => 2,"d" => 3,"e" => 4,"f" => 5,"g" => 6,"h" => 7,"i" => 8,"j" => 9,
				"0" => 0, "1" => 1,"2" => 2,"3" => 3,"4" => 4,"5" => 5,"6" => 6,"7" => 7,"8" => 8,"9" => 9 }
	
	tmp = line.split("")
	
	newstring = ""


	for i in 0..tmp.size
		a = tmp[i].to_s
		if code_map.key?(a)
			newstring = newstring + code_map.fetch(a).to_s
		end

	end

	if newstring == ""
		puts "NONE"
	else
		puts newstring
	end


end

