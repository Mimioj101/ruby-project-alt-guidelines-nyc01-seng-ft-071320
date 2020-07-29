require 'pry'

class CommandLineInterface

    

    def greet 
        puts "Welcome to Filmbuff, your review is important to us"
    end 

    def self.menu
        puts "What would you like to do?"
        puts "Put 1 to write, edit or delete a review!"
        puts "Put 2 to look up a movie!"
        puts "Put 3 to look at your reviews!"
        user_input = gets.chomp
        case user_input
        when "1"
            self.review_menu
        when "2"
            #search_movie
        when "3"
            #view_own_reviews
        else
            menu
        end
    end

    def self.review_menu
        puts "Put 1 to write a review!"
        puts "Put 2 to edit a review!"
        puts "Put 3 to delete a review."
        user_input = gets.chomp
        case user_input
        when "1"
            User.write_review
        when "2"
            User.edit_review
        when "3"
            User.delete_review
        else
           self.review_menu
        end
    end
    


        
end
