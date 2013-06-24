class Die
	def initialize
		roll
	end

	def roll
		@number_showing = 1 + rand(6)
	end

	def showing
		@number_showing
	end

	def cheat
		puts 'Enter number:'
		num = gets.chomp
		@number_showing = num
	end
end

puts Die.new.showing
lucky = Die.new
lucky.cheat
puts lucky.showing