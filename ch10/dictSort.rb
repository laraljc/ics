puts 'Hi, what words would you like sorted?'
words = gets.chomp

#2 arrays: one for the to-be-sorted words and one for the sorted words
unsorted_array = []
sorted_array = []

#input the words given into the unsorted array
while words != ''
	unsorted_array.push words
	words = gets.chomp
end

#wrapper
def sort unsorted_array	
	recursive_sort unsorted_array, []
end

#recursive operation
def recursive_sort unsorted_array, sorted_array
	#if there are 0 words in unsorted array then the operation is done and the sorted array is returned
	if unsorted_array.length == 0
		return sorted_array
	#if there ARE words in the unsorted array then find the minimum/smallest word and move to sorted array
	else
		indexmin = getmin 0, 1, unsorted_array

		#find the smallest word with getmin method
		#switch min to last in unsorted array and pop off
		temp = unsorted_array[indexmin]
		unsorted_array[indexmin] = unsorted_array.last
		unsorted_array[unsorted_array.length - 1] = temp
		smallest = unsorted_array.pop

		#push smallest word onto sorted array
		sorted_array.push smallest
		
		#repeat
		recursive_sort unsorted_array, sorted_array
	end
end

#method to find the smallest word
def getmin currentmin, currentindex, unsorted_array

	#once all words in unsorted array have been compared then you have currentmin
	if currentindex == unsorted_array.length
		currentmin			
	else
		#compare downcase of currentmin word to downcase of currentindex word
		#if currentmin is smaller than currentindex then continue comparison to next word
		if unsorted_array[currentmin].downcase < unsorted_array[currentindex].downcase
			getmin currentmin, currentindex + 1, unsorted_array								
		else
			#if currentmin is NOT smaller than currentindex then use currentindex as the new min (smallest word)
			getmin currentindex, currentindex + 1, unsorted_array
		end
	end
end

puts sort unsorted_array