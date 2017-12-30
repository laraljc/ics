puts 'What do you want to tell Grandma?'
reply = gets.chomp
while reply != 'BYE'
	if reply == reply.upcase
		year = 1930 + rand(21)
		puts 'NO, NOT SINCE ' + year.to_s + '!'
	else
		puts 'HUH?! SPEAK UP, SONNY!'
	end
	reply = gets.chomp
end
puts 'OK BYE'