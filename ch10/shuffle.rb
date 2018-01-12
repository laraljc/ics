def shuffle array
  recursive_shuffle array, []   
end

def recursive_shuffle unshuffled, shuffled
 #if there is only one word in unshuffled then push to shuffled and return shuffled array
  if unshuffled.length == 1
    shuffled.push unshuffled[0]                
    return shuffled
  end
#find a random word
#push random word into shuffled array
  rand_index = rand(unshuffled.length)
  shuffled.push unshuffled[rand_index]
#put random word at end of unshuffled array
#pop off unshuffled
  temp = unshuffled[rand_index]
  unshuffled[rand_index] = unshuffled.last
  unshuffled[unshuffled.length - 1] = temp
  unshuffled.pop
 #repeat
  recursive_shuffle(unshuffled, shuffled)
end
array = ['hey', 'lol', 'wassup']
puts(shuffle(array))