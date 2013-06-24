#Coded in similar fashion to example in book
#but was unable to solve a 'stack level too deep' error 




=begin
	counter = 1
	winner = 0
	while unsorted_array[counter].nil? == false
		if unsorted_array[winner] < unsorted_array[counter]
			puts 
			
		else winner = counter
			
		end
	sorted_array.push unsorted_array[winner]
	unsorted_array.delete unsorted_array[winner]
	counter += 1
	end
	recursive_sort unsorted_array, sorted_array
end


while true
puts "Enter word:"
word = gets.chomp
	if word == ''
		break
	end
unsorted_array.push word
end
recursive_sort unsorted_array, []
=end

unsorted_array = []
def sort some_array #This "wraps" recursive_sort
	recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
	# Your fabulous code goes here
	if unsorted_array.length <= 0
		return sorted_array
	end

	smallest = unsorted_array.pop
	still_unsorted = []

	unsorted_array.each do |tested_object|
		if tested_object < smallest
			still_unsorted.push smallest
			smallest = tested_object
		else
			still_unsorted.push tested_object
		end
	end
	sorted_array.push smallest
	recursive_sort still_unsorted, sorted_array
end

puts (sort(['can','feel','singing','like','a','can']))

def sort arr
	return arr if arr.length <= 1
	middle = arr.pop
	less = arr.select{|x| x < middle}
	more = arr.select{|x| x >= middle}
	sort(less) + [middle] + sort(more)
end
p(sort(['can', 'feel','singing','like','a','can']))

def reformulate arr
	capitalized = []
	noncapitalized = []
	total = []
	final = []
	arr.each do |object|
		undercase = object.downcase
		if undercase == object
			noncapitalized.push undercase
			total.push undercase		
		else
			capitalized.push undercase
			total.push undercase
		end
	end
	sort(total).each do |object|
		counter = 0
			capitalized.each do |cap|
				if object == cap
					final.push object.capitalize
					counter = 1
				end
			end
		if counter ==0
			final.push object
		end
	end
	puts final

end
reformulate(['Can', 'Feel','Singing','like','a','can'])

=begin

using an each loop, determine whether the select object is 
lower than the current smallest
push non-lowest to an array called still_unsorted
push lowest to sorted
run dict sort again on still_unsorted and sorted

=end

def dictionary_sort arr
	rec_dict_sort arr, []
end
def rec_dict_sort unsorted, sorted
	if unsorted.length <= 0
		return sorted
	end
smallest = unsorted.pop
still_unsorted = []
	unsorted.each do |tested_object|
		if tested_object.downcase < smallest.downcase
			still_unsorted.push smallest
		smallest = tested_object
	else
		still_unsorted.push tested_object
	end
end

sorted.push smallest
rec_dict_sort still_unsorted, sorted
end
puts(dictionary_sort(['can','feel','singing','like','A','can']))

=begin
reconstructing the above method from notes
def dict_sort arr
	if arr.length <= 1
		return arr
	end
smallest = array.pop
array.each do |target|
	if smallest.downcase > target.downcase
		still_unsorted.push smallest
		smallest = target
	else still_unsorted.push target
	end
end
sorted.push smallest
dict_sort still_unsorted, sorted
=end