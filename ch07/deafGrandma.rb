puts 'What do you want to tell Grandma?'
reply = gets.chomp				#store response
while reply != 'BYE'			#if the response is anything but BYE then grandma replies
	if reply == reply.upcase	#if reply is all in uppercase letters then grandma hears and replies with 'not since year'
		year = 1930 + rand(21)	#1930 plus a random number selected from number 0-20 
		puts 'NO, NOT SINCE ' + year.to_s + '!'
	else						#if response is not in uppercase then grandma doesn't hear
		puts 'HUH?! SPEAK UP, SONNY!'
	end
	reply = gets.chomp
end
puts 'OK BYE'