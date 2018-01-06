def find_new_roman_numeral number
	
	thousands_in_m = 0
	nine_hundredths_in_cm = 0
	five_hundreths_d = 0
	four_hundredths_in_cd = 0
	hundredths_c = 0
	ninety_in_xc = 0
	fifties_l = 0
	forty_in_xl = 0
	tenths_x = 0
	nines_in_ix = 0
	fives_v = 0
	fours_in_iv = 0
	ones_i = 0

	if number >= 1000
		 thousands_in_m = number/1000
		number = number % 1000
	end
	if number >= 900
		 nine_hundredths_in_cm = number/900
		number = number % 900
	end
	if number >= 500 
		 five_hundreths_d = number/500
		number = number % 500
	end
	if number >= 400
		 four_hundredths_in_cd = number/400
		number = number % 400
	end
	if number >= 100
		 hundredths_c = number /100
		number = number % 100
	end
	if number >= 90
		 ninety_in_xc = number/90
		number = number % 90
	end
	if number >= 50
		 fifties_l = number/50
		number = number % 50
	end
	if number >= 40
		 forty_in_xl = number/40
		number = number % 40
	end
	if number >= 10
		 tenths_x = number/10
		number = number % 10
	end
	if number >= 9
		 nines_in_ix = number/9
		number = number % 9
	end
	if number >= 5
		  fives_v = number/5
		number = number % 5
	end
	if number >= 4
		 fours_in_iv = number/4
		number = number % 4
	end
	if number >= 1
		 ones_i = number/1
	end
puts 'M' * thousands_in_m + 'CM' * nine_hundredths_in_cm + 'D' * five_hundreths_d + 'CD' * four_hundredths_in_cd + 'C' * hundredths_c + 'XC' * ninety_in_xc + 'L' *fifties_l + 'XL' * forty_in_xl + 'X' * tenths_x + 'IX' * nines_in_ix + 'V' * fives_v + 'IV' * fours_in_iv + 'I' * ones_i
end

puts 'What number between 0 and 3000 would you like to convert into a modern roman numeral?'
x = gets.chomp
find_new_roman_numeral x.to_i
