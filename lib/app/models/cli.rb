require 'pry'

class CommandLineInterface

    

    def greet 
        puts "Welcome to Filmbuff, your review is important to us"
    end 

    def menu
        puts "What would you like to do?"
        puts "Put 1 to write, edit or delete a review!"
        puts "Put 2 to look up a movie!"
        puts "Put 3 to look at your reviews!"

        user_input= gets.chomp
    end 
    


        
end
