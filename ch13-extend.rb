class Integer
	def to_fact
		if self == 1
			return self
		end
		new = self - 1
		final = self * new.to_fact
		return final
	end
end

puts 5.to_fact
