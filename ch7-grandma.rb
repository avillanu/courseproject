puts 'Starting Year'
start = gets.chomp
puts 'Ending Year'
ending = gets.chomp.to_i
subject = start.to_i
while subject <= ending
if subject % 4 == 0
	if subject % 100 == 0
		if subject % 400 == 0
			puts subject.to_s + 'because it is divisible by 400, yes'
			subject +=1	
		else
			puts subject.to_s + 'no, subject divisible by 100'
			subject += 1
		end
	
    else
	puts subject.to_s + 'because it is divisible by 4 and not 100 yes'		
	subject += 1
	end
else
	puts subject.to_s + 'no, because it is not divisible by 4'
	subject += 1
end
end

