puts 'EXERCISE 1'
arr = [1,2,3,4,5,6,7,8,9,10]
arr.each do |num|
	puts num
end
puts 'EXERCISE 2'
arr.each do|num|	
	if num > 5
		puts num
	end
end
puts 'EXERCISE 3'
newarr = arr.select{|x| x % 2 != 0}
newarr.each do |num2|
	puts num2
end
puts 'EXERCISE 4'
arr.push 11
arr.unshift 0
arr.each do |num|
	puts num
end
puts 'EXERCISE 5'
arr.pop
arr.push 3
arr.each do |num|
	puts num
end
puts 'EXERCISE 6'
arr = arr.uniq
arr.each do |num|
	puts num
end
puts 'EXERCISE 7'
puts 'Array has numerical keys and has an order. With a hash, anything can be used as'
puts ' a key.'
puts 'EXERCISE 8'
h1dot8 = {'a'=>1, 'b'=>2, 'c'=>3,'d'=>4}
h1dot9 = {a:1, b:2, c:3, d:4}
puts 'EXERCISE 9'
puts "#{h1dot8['b']}"
puts "#{h1dot9[:b]}"
puts 'EXERCISE 10'
h1dot9[:e] = 5
puts "#{h1dot9[:e]}"
puts 'EXERCISE 13'
h1dot9.each {|key, value| 
	if value < 3.5
		h1dot9.delete(key)
	end
}
h1dot9.each {|key, value| 
	puts value
}
puts "#{h1dot9[:a]}"
puts 'EXERCISE 14'
hash2 = {a: [1,2,3], b:"this is a string", c:4}
#a is a has value which is an Array
#array of hashes below
hash3 = [{a:1, b:2}, {c:3,d:4}, {e:5,f:6}]
puts 'EXERCISE 15'
puts 'I like railsapi.com. Nice and clean layout, easy to remember domain. Can also be used for'
puts 'rails in the future. '