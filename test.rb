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


# def bsearch (arr, el)

#   return nil if arr.length == 0

#   mid_idx = arr.length / 2
#   mid_item = arr[mid_idx]

#   arr_1 = arr[0...mid_idx]
#   arr_2 = arr[mid_idx+1...arr.length]
  
#   if el == mid_item 
#     return mid_idx
#   elsif el > mid_item 
#     # p mid_item 
#     next_search = bsearch(arr_2, el)
#     return nil if next_search == nil
#     return mid_idx + 1 + next_search
#   else
#     return bsearch(arr_1, el)
#   end

# end
  
# p bsearch([1, 2, 3], 1) # => 0
# p bsearch([2, 3, 4, 5], 3) # => 1
# p bsearch([2, 4, 6, 8, 10], 6) # => 2
# p bsearch([1, 3, 4, 5, 9], 5) # => 3
# p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
# p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
# p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil

def merge_sort(arr)
    if arr.length == 1
       return arr
    end
    mid_idx = arr.length / 2
    mid_item = arr[mid_idx]
    arr_1 = arr[0...mid_idx]
    arr_2 = arr[mid_idx...arr.length]
    sorted_arr = merge(merge_sort(arr_1), merge_sort(arr_2))
end


def merge(arr_1, arr_2)
   narr = []
   if arr_1.length > arr_2.length 
      length = arr_2.length
   else
     length = arr_1.length
   end
   
   while true
    if arr_2.length == 0
      narr += arr_1
      break
    elsif arr_1.length == 0
      narr += arr_2
      break
    else
      if arr_2[0] > arr_1[0]
        smaller_item = arr_1.shift
        narr << smaller_item
      else
        smaller_item = arr_2.shift
        narr << smaller_item
      end
    end
   end
   narr
end 

arr1 = [4,5,6]
arr2 = [8,9,10]

p merge(arr1, arr2) #=> [2,4,5,6,8,9]

# p merge_sort([2,5,4,7,9,3,8])



# def subsets()


# end

# subsets([]) # => [[]]
# subsets([1]) # => [[], [1]]
# subsets([1, 2]) # => [[], [1], [2], [1, 2]]
# subsets([1, 2, 3])
# => [[], [1], [2], [1, 2], [3], [1, 3], [2, 3], [1, 2, 3]]

