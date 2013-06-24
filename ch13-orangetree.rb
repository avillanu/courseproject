class OrangeTree
	def initialize
		@inches = 10
		@age = 3
		@oranges = 0
	end
	def height
		return @inches
	end
	def one_year_passes
		@age += 1
		@inches += 1
		if @age > 3
			@oranges = 100 + @age * 5
		end
		#age, 25 , death
	end
	def count_the_oranges
		return @oranges
	end
	def pick_an_orange
		if @oranges > 0
			@oranges -= 1
		end
	end
end

otree = OrangeTree.new
puts otree.height
otree.one_year_passes
otree.one_year_passes
otree.one_year_passes
otree.one_year_passes
otree.one_year_passes
puts otree.count_the_oranges
otree.pick_an_orange
puts otree.count_the_oranges
otree.one_year_passes
puts otree.count_the_oranges