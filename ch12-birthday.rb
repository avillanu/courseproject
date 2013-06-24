#need to use range to do this

=begin
filename = 'birthday.txt'
read_string = File.read filename
counter = 0
while counter <= read_string.length
	name = ''
	character = ''

	if read_string[counter] == ','
		puts 'comma'
	end
	character = read_string[counter]
	puts "Character" + character

	counter +=1	
end
puts read_string
puts "What's the name?"
#name = gets.chomp
=end
birth_dates = {}
File.read('birthday.txt').each_line do |line|
	line = line.chomp
	counter = 0
	while line[counter] != ',' && counter<line.length
		counter = counter + 1
	end

	name = line[0..(counter-1)]
	date = line[-12..-1]
	birth_dates[name] = date
end

puts "What's the name"
name = gets.chomp
date = birth_dates[name]
if date ==nil
	puts "Oooh, I don't know that one..."
else
	puts date[0..5]
end