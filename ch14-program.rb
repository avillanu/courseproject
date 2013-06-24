$nesting_depth = 0
def logi desc, &block
	$nesting_depth += 1
	puts '   ' * $nesting_depth + 'starting ' + desc
	returning = block.call
	puts '   ' * $nesting_depth +  'ending ' + desc
	puts '   ' * $nesting_depth +  'returning: ' + returning.to_s
	$nesting_depth -= 1
end

logi 'Empty beers on the wall' do 
	'Drink less'
	logi 'zen' do
	'zen'
	end
end

