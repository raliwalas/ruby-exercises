=begin

Additional exercises as per suggested in the OP assignment. 

Exercises from https://launchschool.com/books/ruby/read/arrays


running them with irb

=end



### Excercise 1 ###

# Below we have given you an array and a number. 
# Write a program that checks to see if the number appears in the array.

arr = [1, 3, 5, 7, 9, 11]
number = 3

# answer
if arr.include?(number) == true
    puts "#{number} is in this array."

end


### Exercise 2 ###

# What will the following programs return? What is the value of arr after each?

# 1
arr = ["b", "a"]
arr = arr.product(Array(1..3))
arr.first.delete(arr.first.last)

# 2 
arr = ["b", "a"]
arr = arr.product([Array(1..3)])
arr.first.delete(arr.first.last)

# answer

=begin 



end 



### Exercise 3 ###

# How do you return the word "example" from the following array?

arr = [["test", "hello", "world"],["example", "mem"]]


### Exercise 4 ###

# What does each method return in the following example?

arr = [15, 7, 18, 5, 12, 8, 5, 1]

# 1. 
arr.index(5)

# 2. 
arr.index[5]

# 3. 
arr[5]

# answer 


### Exercise 5 ###

# What is the value of a, b, and c in the following program?

string = "Welcome to America!"
a = string[6]
b = string[11]
c = string[19]


### Exercise 6 ###

# You run the following code...

names = ['bob', 'joe', 'susan', 'margaret']
names['margaret'] = 'jody'

# ...and get the following error message:

=begin

TypeError: no implicit conversion of String into Integer
  from (irb):2:in `[]='
  from (irb):2
  from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'

What is the problem and how can it be fixed?

end


# answer 


### Exercise 7 ###

# Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.



### Exercise 8 ###

=begin

Write a program that iterates over an array and builds a new array that 
is the result of incrementing each value in the original array by a value of 2. 
You should have two arrays at the end of this program, 
The original array and the new array you've created. 
Print both arrays to the screen using the p method instead of puts.

end
