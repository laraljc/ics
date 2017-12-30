puts 'What do you want to tell Grandma?'
byes = 0
while byes < 3
	reply = gets.chomp
	if reply == reply.upcase
		year = 1930 + rand(21)
		puts 'NO, NOT SINCE ' + year.to_s + '!'
	else
		puts 'HUH?! SPEAK UP, SONNY!'
	end
	if reply == 'BYE'
		byes = byes + 1
	else byes = 0
	end
end
puts 'OK BYE'