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

puts "Hey #{name}, what's your birthday?"
bdayStr = gets.chomp

if bdayStr.empty?
  puts "You must enter your birthday!"
  exit
end

bdayStr = bdayStr.split('/')
bday = Time.new(bdayStr[2], bdayStr[0], bdayStr[1])
now = Time.now

if bday.month >= now.month && bday.day > now.day
  bday = Time.new(now.year, bdayStr[0], bdayStr[1])
else
  bday = Time.new(now.year+1, bdayStr[0], bdayStr[1])
end
days = (bday - now).to_i / (24*3600)
puts "Awesome! Your birthday is in #{days} days! Happy birthday in advance!"
