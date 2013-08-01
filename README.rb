def pig_latin_1
  while true
    puts 'Say something to translate.'
    input = gets.chomp
    break if input == 'Goodbye'
    puts input.gsub(/([^aeiouy ]+)([aeiouy]\w*)/, '\2\1ay')
  end
end
 
# Iteration 2: Translates Sentences into Pig Latin
# (This is virtually identical to Iteration 1, aside from displaying
# the number of words.)
 
def pig_latin_2
  while true
    puts 'Say something to translate.'
    input = gets.chomp
    break if input == 'Goodbye'
    puts input.gsub!(/([^aeiouy ]+)([aeiouy]\w*)/, '\2\1ay')
    puts "#{input.split(" ").length} words were converted."
  end
end
 
pig_latin_2

# Cool program that I need to look at again. Would this be a good program to turn into a web app? Sure!
# Also a way to practice regular expressions. And looking at the gsub method. 
# The regex is matched in two groups. Why? The second part of gsub is the reordered word with ay added.
