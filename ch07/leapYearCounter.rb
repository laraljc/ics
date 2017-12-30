puts 'What is your starting year?'
start = gets.chomp.to_i
puts ' What is your ending year?'
ending = gets.chomp.to_i
puts 'these are the leapyears'
while start <= ending
	if start%4 == 0 && start%100 != 0 || start%400 == 0
		puts start.to_s
	end
	start = start +1
end
