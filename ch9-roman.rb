def old_roman_numeral numbers
numerals = []

counter1 = 0
counter10 = 0
counter100 = 0
while numbers >= 1000
	numbers -= 1000
	numerals.push 'M'
end
while numbers >= 500
	numbers -= 500
	numerals.push 'D'
end
if numbers >= 900
	numbers -= 900
	numerals.push 'CM'
end
while numbers >= 100
	numbers -= 100
	counter100 += 1
	numerals.push 'C'
	if counter100 == 4
		numerals.pop
		numerals.pop
		numerals.pop
		numerals.pop
		numerals.push 'CD'
	end
end
if numbers >= 90
	numbers -= 90
	numerals.push 'XC'
end

while numbers >= 50
	numbers -= 50
	numerals.push 'L'
end
while numbers >= 10
	numbers -= 10
	counter10 += 1
	numerals.push 'X'
	if counter10 == 4
		numerals.pop
		numerals.pop
		numerals.pop
		numerals.pop
		numerals.push 'XL'
	end
end
if numbers == 9
	numbers -= 9
	numerals.push 'IX'
end

while numbers >= 5
	numbers -= 5
	numerals.push 'V'
end
while numbers >= 1
	numbers -= 1
	counter1 += 1
	numerals.push 'I'
	if counter1 == 4
		numerals.pop
		numerals.pop
		numerals.pop
		numerals.pop
		numerals.push 'IV'
	end
end

puts numerals.join('')
end
puts "Enter number:"
number = gets.chomp
numbers = number.to_i
roman = old_roman_numeral numbers

