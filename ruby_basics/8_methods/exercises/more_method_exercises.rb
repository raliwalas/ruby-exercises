=begin

exercises from https://launchschool.com/books/ruby/read/methods

will be running them in irb
  
=end


#### Exercise 1 ####

=begin

Write a program that prints a greeting message. 
This program should contain a method called greeting 
that takes a name as its parameter and returns a string.

=end

def greeting(name)

    puts "Howdy #{name}!"
end


greeting("Rachel")

#### Exercise 2 ####

=begin

What do the following expressions evaluate to? 
    That is, what value does each expression return?

1. x = 2

2. puts x = 2

3. p name = "Joe"

4. four = "four"

5. print something = "nothing"


# answer

1. 2
2. nil 
3. "Joe"
4. "four"
5. nil


got 2. and 5. wrong
    - puts always returns nil
    - so does print
    - p does not return nil. It returns the same object that was passed to it as an argument
=end



#### Exercise 3 ####

=begin

Write a program that includes a method called multiply that takes two arguments and 
returns the product of the two numbers.


=end

def multiply(num1, num2)

    product = num1*num2
    return product
    # could also have the method return implicitly

end

multiply(2, 4)

#### Exercise 4 ####

=begin

What will the following code print to the screen?

=end

def scream(words)
    words = words + "!!!!"
    return
    puts words
end
  
scream("Yippeee")

=begin

# answer

No object was passed to the return, so it won't return anything. 

=end

#### Exercise 5 ####

=begin

1) Edit the method definition in exercise #4 so that it does print words on the screen. 
2) What does it return now?


=end

# answer
def scream(words)
    words = words + "!!!!"
    #return
    #puts words
end
  
scream("Yippeee")

# returns implicitly. Returns "Yippeee!!!!"

# corrections
    # answer in the book removes the return line and just has the puts
    # with solution in the book, it prints to the screen but has nil returned
    # my solution has it return words, instead of just printing it

#### Exercise 6 ####

=begin

What does the following error message tell you?

ArgumentError: wrong number of arguments (1 for 2)
  from (irb):1:in `calculate_product'
  from (irb):4
  from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'



# answer
    
    this is telling us that the calculate_product() method requires 2 arguments,
    but only 1 was passed to it.

=end

