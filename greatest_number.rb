def find_greatest_number(x,y,z)
  if x > y && x > z
    return x
  elsif y > x && y > z
    return y
  else 
    return z
  end
end

x = 28
y = 8 
z = 15

greatest_number = find_greatest_number(x, y, z)

puts "The greatest number among the three number is #{greatest_number}"