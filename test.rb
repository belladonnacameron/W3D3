# def range (num) 
#   narr = []
#   (1..num).each do |x|
#     narr << x   
#   end 
# return narr
# end 

# puts range(9)

def range_recursive (num)
  return [1] if num ==  1

  range_recursive(num-1) + [num]
end

puts range_recursive (9)