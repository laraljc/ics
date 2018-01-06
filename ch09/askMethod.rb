def ask question
	while true
		puts question
		reply = gets.chomp.downcase

		if reply == 'yes'
			return true
		elsif reply == 'no'
			return false
		else 
			puts 'Please answer "yes" or "no".'
		end
	end
end

puts ' hello you\'re in a diagnostic test'
puts
ask 'do you like eating tacos?'
ask 'do you like eating burritos?'
wets_bed = ask 'do u wet bed?'
ask 'do you like dogs?'
ask 'do you like drinking horchata?'
puts
puts 'thanks for answering. we actually wanted to know if you were a bed wetter'
puts 'DEBRIEFING: bed wetter?'
puts
puts wets_bed