def find_old_roman_numeral number
	thousands_in_m = 0
	five_hundreths_d = 0
	hundredths_c = 0
	fifties_l = 0
	tenths_x = 0
	fives_v = 0
	ones_i = 0

	if number >= 1000
		 thousands_in_m = number/1000
		number = number % 1000
	end
	if number >= 500 
		 five_hundreths_d = number/500
		number = number % 500
	end
	if number >= 100
		 hundredths_c = number /100
		number = number % 100
	end
	if number >= 50
		 fifties_l = number/50
		number = number % 50
	end
	if number >= 10
		 tenths_x = number/10
		number = number % 10
	end
	if number >= 5
		  fives_v = number/5
		number = number % 5
	end
	if number >= 1
		 ones_i = number/1
	end
puts 'M'*thousands_in_m + 'D'*five_hundreths_d + 'C'*hundredths_c + 'L'*fifties_l +'X'*tenths_x + 'V'*fives_v + 'I'*ones_i
end

puts 'What number between 0 and 3000 would you like to convert into an old roman numeral?'
x = gets.chomp
find_old_roman_numeral x.to_i