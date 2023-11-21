# from  https://launchschool.com/books/ruby/read/more_stuff#readingstacktraces


### Exercise 1 ###

=begin

Write a program that checks if the sequence of characters "lab" exists in the following strings. 
If it does exist, print out the word.

"laboratory"
"experiment"
"Pans Labyrinth"
"elaborate"
"polar bear"

=end

# my answer

def lab_word(string)

    if string.include?("lab") == true
        puts string + "!"
    else
        puts "not a lab word"
    end

end

# book's answer

def check_in(word)
    if /lab/ =~ word
      puts word
    else
      puts "No match"
    end
end
  
  
check_in("laboratory")
check_in("experiment")
check_in("Pans Labyrinth")
check_in("elaborate")
check_in("polar bear")


### Exercise 2 ###

# What will the following program print to the screen? What will it return?

def execute(&block)
    block
end
  
execute { puts "Hello from inside the execute method!" }

# I think it will print "Hello from inside the execute method!" and return nil

# CORRECTION: Nothing is printed to the screen because the block is never activated with the .call method. The method returns a Proc object.


### Exercise 3 ###

# What is exception handling and what problem does it solve?

=begin
# answer

Exceptions handle unexpected inputs. It allows for the program to still run if the user inputs 
something unexpect or incorrect. This prevents the program from crashing - it communicates rather than crashing

# Correction:
- "handling error by changing the flow of control"
- important to note the flow of control

=end

### Exercise 4 ###

# Modify the code in exercise 2 to make the block execute properly.

def execute(&block)
    block.call
end
  
execute { puts "Hello from inside the execute method!" }


### Exercise 5 ###

=begin

Why does the following code...


Give us the following error when we run it?


block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
from test.rb:5:in `<main>'

=end

def execute(block)
    block.call
end
  
execute { puts "Hello from inside the execute method!" }

=begin

answer

It's missing the & in the argument. The & allows the block to be passed as a parameter

=end