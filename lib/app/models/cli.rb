require 'pry'

class CommandLineInterface

    

    def greet 
        user = User.login
        if user
            puts "Welcome to Filmbuff, your review is important to us"
            puts " Here the list of all the movies, which movie would you like to write a review?"
            Movie.all.each do |movie|
                puts movie.title
            end 
            movie_title= gets.chomp
            Movie.find_by(title: movie_title)
    end

end
