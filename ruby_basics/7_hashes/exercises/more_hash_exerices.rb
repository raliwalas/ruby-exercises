=begin

additional exercises from https://launchschool.com/books/ruby/read/hashes

will be running these in irb on my commandline

= end


#### Exercise 1 ####
=begin

Given a hash of family members, with keys as the title and an array of names as the values, 
use Ruby's built-in select method to gather only siblings' names into a new array.

=end
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }



# answer

siblings = family.select do |k, v|
    k == :sisters || k == :brothers
end

arr = siblings.values.flatten # need the flatten to combine the 2 arrs (sisters and bros)

p arr

#### Exercise 2 ####
=begin

Look at Ruby's merge method. Notice that it has two versions. 
What is the difference between merge and merge!? 
Write a program that uses both and illustrate the differences.

=end


#### Exercise 3 ####
=begin

Using some of Ruby's built-in Hash methods, 
write a program that loops through a hash and prints all of the keys. 
Then write a program that does the same thing except printing the values. 
Finally, write a program that prints both.

=end


#### Exercise 4 ####
=begin

Given the following expression, how would you access the name of the person?

=end

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}


#### Exercise 5 ####
=begin

What method could you use to find out if a Hash contains a specific value in it? 
Write a program that verifies that the value is within the hash.

=end

#### Exercise 6 ####
=begin

Given the following code...

What's the difference between the two hashes that were created?

=end
x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}



#### Exercise 7 ####
=begin

If you see this error, what do you suspect is the most likely problem?

    NoMethodError: undefined method `keys' for Array


A. We're missing keys in an array variable.

B. There is no method called keys for Array objects.

C. keys is an Array object, but it hasn't been defined yet.

D. There's an array of strings, and we're trying to get the string keys out of the array, but it doesn't exist.

=end

