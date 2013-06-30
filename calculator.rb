puts "Enter First Number:"
num1 = gets.chomp
puts "Enter Second number:"
num2 = gets.chomp
puts "Enter your operation. 1 for +, 2 for -, 3 for *, 4 for /"
opp = gets.chomp
result = 0
if opp == '1'
	result = num1.to_i + num2.to_i
end
if opp == '2'
	result = num1.to_i - num2.to_i
end
if opp == '3'
	result = num1.to_i * num2.to_i
end
if opp == '4'
	result = num1.to_f / num2.to_f
end
puts 'Answer is:' + result.to_s