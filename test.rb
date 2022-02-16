require 'byebug'

# def range (num) 
#   narr = []
#   (1..num).each do |x|
#     narr << x   
#   end 
# return narr
# end 

# puts range(9)

# def range_recursive (num)
#   return [1] if num ==  1

#   range_recursive(num-1) + [num]
# end

# puts range_recursive (9)


# def exp(b, n)
#  return 1 if n == 0

#  b * exp(b, n - 1)

# end 

# # recursion 1
# p exp(2, 0) #= 1
# p exp(2, 3) #= b * exp(b, n - 1)

# def exp(b, n)
#     return 1 if n == 0
#     return b if n == 1
#     if n.even? 
#       exp(b, n / 2) ** 2
#     else
#       b * (exp(b, (n - 1) / 2) ** 2)
#     end
# end

# # recursion 2
# p exp(2, 0) #= 1
# p exp(2, 1) #= b
# p exp(2, 3) #= exp(b, n / 2) ** 2             [for even n]
# p exp(2, 4) #= b * (exp(b, (n - 1) / 2) ** 2) [for odd n]


# def deep_dup (arr)
#   narr = []
#   arr.each do |x|
#     if !x.is_a?(Array)
#       narr << x 
#     else 
#       narr << deep_dup(x)
#     end
#   end 
#   return narr
# end

# x = [1,[2],3]
# y = deep_dup(x)
# puts x[1].object_id 
# puts y[1].object_id
# print x 
# print y 

# def fibonacci(n)
#   base = [1,1,2]
#   num_of_adds = n - base.length 
#   (num_of_adds).times do |i|
#     base << base[-1] + base[-2]
#   end

#   base

# end

# p fibonacci(5)
# p fibonacci(6)



# def fib_rec(n) # n = 3

#   if n == 1
#     return [1]
#   elsif n == 2
#     return [1,1]
#   end

#   prev_fib = fib_rec(n - 1)
  
#   new_fib = prev_fib[-1] + prev_fib[-2]
#   prev_fib << new_fib

#   prev_fib
  
# end

# p fib_rec(3)
# p fib_rec(6) 


