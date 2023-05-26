def convert_number(number, from, to)
  case from
  when "decimal"
    case to 
    when "binary"
      number.to_i.to_s(2)
    when "octal"
      number.to_i.to_s(8)
    else
      return "Invalid number"
    end
  when "binary"
    case to 
    when "decimal"
      number.to_i(2)
    when "octal"
      decimal = number.to_i(2)
      decimal.to_s(8)
    else
      return "Invalid number"
    end
  when "octal"
    case to 
    when "binary"
      decimal = number.to_i(8)
      number.to_s(2)
    when "decimal"
      number.to_i(8)
    else
      return "Invalid number"
    end
  end
end

puts "Enter the number to convert"
number = gets.chomp

puts "Enter the current number system"
from = gets.chomp.to_s

puts  "Enter the number system you want to change to"
to = gets.chomp.to_s

result = convert_number(number, from , to)
puts  "Input: #{number}"
puts  "Output: #{result}"