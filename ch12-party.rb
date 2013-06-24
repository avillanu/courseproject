def roman_to_integer numeral
	letters = {'i' => 1,
				'v' => 5,
				'x' => 10,
				'l' => 50,
				'c' => 100,
				'd' => 500,
				'm' => 1000}
target = numeral.length - 1
total = 0
previous = 0
while target >= 0
	character = numeral[target].downcase
		if !letters[character]
			puts 'Not a roman system'
			return
		end
	current = letters[character]
	if current < previous
		current = current*(-1)
	end
	total += current
	previous = current
	target -=1

end
puts total
end
roman_to_integer('notaninterger')
roman_to_integer('mcmxcix')
roman_to_integer('CCCLXV')