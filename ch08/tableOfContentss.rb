contents = [['Chapter 1', 'Page 1'], ['Chapter 2','Page 10'], ['Chapter 3', 'Page 20']]
line_length = 50
puts 'Table of Contents'.center(line_length)
contents.each do |cont|
	puts cont[0] + cont[1].rjust(line_length)
end