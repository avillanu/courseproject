#Note: extra functionality of SNUM kicks error for some reason, 
#program works
puts "What year were you born in?"
year = gets.chomp
puts "What month were you born in?"
month = gets.chomp
puts "What day were you born in?"
day = gets.chomp
birthday = Time.local(year,month,day)
puts birthday
marker = Time.new
SNUM = 1
while marker > birthday + (365*24*60*60)
	puts "SPANK NUMBER " + SNUM.to_s
	marker -= (365*24*60*60)
	SNUM += 1
end

#marker = today 6/18/2013
#birthday = bday # 6/18/2014
#reason we need to take add a year to birthday in while loop is because
#the loop will count the leftover days as an extra year.