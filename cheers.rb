# Build on the results of our in-class exploration to output, for example:

# Give me an... A
# Give me a... B
# Give me a... B
# Give me a... Y
# ABBY’s just GRAND!
# When given the input of “Abby”.

# Note: the “a” vs. “an”

# P.S.: name.methods - Object.methods

puts "What's your name?"
name = gets.chomp

if name.empty?
  puts "You must enter your name!"
  exit
end

puts "Your name is #{name}"
name.each_char do |char|
  char = char.upcase
  if char.index(/[AEFHILMNORSX]/)
    puts "Give me an... #{char}"
  else
    puts "Give me a... #{char}"
  end
end
