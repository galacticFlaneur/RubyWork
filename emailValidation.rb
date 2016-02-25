#email validation - medium codeeval


File.open(ARGV[0]).each_line do |line| 

if line != "\n"
	valid = false
	line.delete!("\n")

	#regex = Regexp.new(/(\w+@{1}\w+.com{1}|\w+@{1}\w+.net{1}|\w+@{1}\w+.org{1})/)
	regex = Regexp.new(/(\w+@{1}[a-z0-9]+[.][a-z]+)/i)
	#regex = Regexp.new(/(\w+@{1}[a-z0-9]+[.][a-z]+)/i)
	#puts regex
	#puts regex.match(line)

	matchString = regex.match(line).to_s


	#MAKE SURE OBJ types are the same, wasted 30 min on thinking my reg ex was wrong when really the comparison of obj types was throwing me off
	if matchString.eql? line
		valid=true
		puts valid
	else
		puts valid
	end
end

# can just use this one line, this demonstrates ternary operators if the first part evaluates to true then do the first part after ? and before : else do the other
puts line.match(/^[0-9a-zA-Z-]+@([0-9a-zA-Z]+.)[a-z]+$/ix) ? true : false

# double quotes usage means you need escape characters otherwise single quotes means you do not


end