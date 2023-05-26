def boxy(num)
  if num.negative? 
    puts "Invalid number"
    return
  end
   
  rows =(num.to_f/10).ceil
  n = num >= 10 ? 10 : num
  horizantal_dash = "  __ " * n
  puts horizantal_dash
  (1..rows).each do |row|
    start_number = (row - 1) * 10 + 1
    end_number = [ row * 10 , num].min
    horizantal_line = "__" * (n * 3)
    puts horizantal_line
    print "|" 
    (start_number..end_number).each do |i| 
      print " #{i} | "
    end
    puts " "
    puts horizantal_line
  end
  puts horizantal_dash
end

puts "Enter the number"
number = gets.chomp.to_i 
boxy(number)
