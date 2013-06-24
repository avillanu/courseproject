def shuffle arr
	arr2 = []
	while true
		if arr.length <=1
			arr2.push arr[0]
			return arr2
		end
	random = arr.slice!(rand(arr.length))
	arr2.push random
	end
end
p(shuffle([0,1,2,3,4]))

=begin
zen2 = []
zen = [0,1,2,3,4,5]
random = zen.slice!(rand(zen.length))
zen2.push random
puts zen2
=end

#book way

def shuffle arr
	shuf = []
	while arr.length > 0
		rand_index = rand(arr.length)
		curr_index = 0
		new_arr = []
		arr.each do |item|
			if curr_index == rand_index
				shuf.push item
			else
				new_arr.push item
			end
			curr_index = curr_index + 1
		end
		arr = new_arr
	end
	shuf
end
puts(shuffle([1,2,3,4,5,6,7,8,9]))
