# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/0-classes.rb

# String Class
giul_loves_sushi = "sushi"
chris_loves_wings = "wings"
puts giul_loves_sushi
puts chris_loves_wings

puts giul_loves_sushi.class
number_of_sushi = 3
puts number_of_sushi.class

# String Methods

# Custom Class
class Dog
    def speak
        puts "woof"
    end
end

brady = Dog.new #gives us a new instance of this class
puts brady.class
brady.speak

# to run a file do rails runner 
