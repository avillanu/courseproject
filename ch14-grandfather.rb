def grandfather &block
	counter = 0
	while counter < Time.new.hour
		block.call
		counter += 1
	end
end

grandfather do
	puts 'DONG!'
end


