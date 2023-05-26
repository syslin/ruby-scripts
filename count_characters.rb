puts "Enter a string to count the occurance of character"

string = gets.chomp.to_s
character_count = Hash.new(0)

string.each_char do |char|
  next if char == " "
  character_count[char] += 1
end

character_count.each do |char, count|
  puts  "#{char}: #{count}"
end