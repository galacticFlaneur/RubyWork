
File.open(ARGV[0]).each_line do |line|
	tmp = line.split(" ")
	fizz = tmp[0].to_i
	buzz = tmp[1].to_i
    count = tmp[2].to_i

	for i in 1..count

		if i % fizz == 0 && i % buzz == 0
			print "FB "
		elsif i % buzz == 0
			print "B "
		elsif i % fizz == 0
			print "F "
		else
			print i.to_s + " "
		end
		
		end
		puts ""
end