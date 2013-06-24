song = []
while true 
puts "Type the word:"
word = gets.chomp
if word == ''
	break
end
song.push word
end
puts song.sort