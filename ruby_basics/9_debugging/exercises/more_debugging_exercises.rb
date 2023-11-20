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


