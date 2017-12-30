array = []
reply = gets.chomp
while reply != ''
	array.push reply.to_s
	reply = gets.chomp
end
puts array.sort