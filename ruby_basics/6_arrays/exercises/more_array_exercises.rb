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
.. means get the range starting from position 1 and ending at position 3 (inclusive)

In 1. 
irb(main):015:0> arr = arr.product(Array(1..3))
=> [["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]

irb(main):016:0> arr.first.delete(arr.first.last)
=> 1
irb(main):017:0> arr
=> [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]


In 2. 

irb(main):021:0> arr = arr.product([Array(1..3)])
=> [["b", [1, 2, 3]], ["a", [1, 2, 3]]]
irb(main):022:0> arr.first.delete(arr.first.last)
=> [1, 2, 3]
irb(main):023:0> arr
=> [["b"], ["a", [1, 2, 3]]]


They both make 2d arrays. In 1, it makes 6 arrays that are 2x2 vs. 2 makes 2x2 arrays,
with nested arrays of 1x3. 

arr.first.delete(arr.first.last)
- take a look in the 0 position (first array)
- we are deleting arr.first.last

- in 1. find the 0 position of the 'inner layer array' -- need to get better with terms
  - which was ["b", 1]
  - delete the last value of that array, which was 1

- in 2. find the first position of the 'inner array' again
  - this time the last value is the nested array so you delete [1, 2, 3]
  - if we wanted to only take out the 3 or whatever individual value
    we'd have to specify to go inside the additional nested layer


=end 



### Exercise 3 ###

# How do you return the word "example" from the following array?

arr = [["test", "hello", "world"],["example", "mem"]]

# answer

# second array (first positon), first positon (aka 0)

arr[1][0]


### Exercise 4 ###

# What does each method return in the following example?

arr = [15, 7, 18, 5, 12, 8, 5, 1]

# 1. 
arr.index(5)

# 2. 
arr.index[5]

# 3. 
arr[5]

=begin
answers

1. outputs 3 because there are 3 fives in the arr

2. outputs an error
(irb):6:in `<main>': undefined method `[]' for #<Enumerator: [15, 7, 18, 5, 12, 8, 5, 1]:index> (NoMethodError)

3. outputs the value in the 5th position, which is 8. 
=end


### Exercise 5 ###

# What is the value of a, b, and c in the following program?

string = "Welcome to America!"
a = string[6]
b = string[11]
c = string[19]

=begin
a is e
b is A
c is nil because there are only 18 characters in the string
=end


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



answer

names['margaret'] returns the position, which is 3, which is why it is confused
It is expecting you to assign it to an integer, not a string

=end


### Exercise 7 ###

# Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.

arr = ["here", "is", "an", "array"]

arr.each_with_index {|value, index| puts "#{index}. #{value}"}


### Exercise 8 ###

=begin

Write a program that iterates over an array and builds a new array that 
is the result of incrementing each value in the original array by a value of 2. 
You should have two arrays at the end of this program, 
The original array and the new array you've created. 
Print both arrays to the screen using the p method instead of puts.

=end

original = [5, 10, 15, 20, 25]

new_arr = []


original.each do |value|
  new_arr << value + 2
end
  
p original
p new_arr