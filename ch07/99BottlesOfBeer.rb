number = 99
while number > 1
	puts  number.to_s + ' bottles of beer on the wall, ' + number.to_s + ' bottles of beer.
	Take one down and pass it around, ' + number.to_s + ' bottles of beer on the wall.'
	number = (number - 1)
end
puts '1 bottle of beer on the wall, 1 bottle of beer.
	Take one down and pass it around, 1 bottle of beer on the wall.

No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.'

	#set number = 99 and keep counting down the bottles
	#only bottle numbers greater than 1 follow the same format
	#loop bottles 99-2 and then end loop for bottles 1 and 0 that have their own lyric