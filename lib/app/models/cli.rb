require 'pry'

class CommandLineInterface

    
    def run 
        greet
        puts "Type in your username to login or signup:"
        username = gets.chomp
        puts "Type in your password to login or signup:"
        password = gets.chomp
        @user = User.find_or_create_by(username: username, password: password)
        menu
    end

    def greet 
        puts "Welcome to Filmbuff, your review is important to us"
    end 


    def menu
        puts "What would you like to do?"
        puts "Put 1 to write, edit or delete a review!"
        puts "Put 2 to look up a movie!"
        puts "Put 3 to look at your reviews!"
        user_input = gets.chomp
        case user_input
        when "1"
            review_menu
        when "2"
            search_movie
        when "3"
            see_my_reviews
        else
            menu
        end
    end

    def review_menu
        puts "Put 1 to write a review!"
        puts "Put 2 to edit a review!"
        puts "Put 3 to delete a review."
        user_input = gets.chomp
        case user_input
        when "1"
            write_review
        when "2"
            edit_review
        when "3"
            delete_review
        else
           review_menu
        end
    end


    def write_review
        puts "What movie would you like to write a review for?"
            title = gets.chomp
            movie_id = Movie.where(title: title).ids
            # movie = Movie.find_by(title: title)
                if Movie.exists?(title: title)
                    puts "Awesome! Out of 5 stars, how many stars would you rate #{title}?"
                    movie_rating = gets.chomp
                    puts "What would you like to write about #{title}?"
                    review_comment = gets.chomp
                    Review.create(movie_id: movie_id, user_id: @user.id, movie_rating: movie_rating, review_comment: review_comment)
                else
                    puts "What genre is #{title}?"
                    genre = gets.chomp
                    puts "How many minutes is #{title}?"
                    length = gets.chomp
                    new_mov = Movie.create(title: title, genre: genre, length: length)
                    puts "Awesome! Out of 5 stars, how many stars would you rate #{title}?"
                    movie_rating = gets.chomp
                    puts "What would you like to write about #{title}?"
                    review_comment = gets.chomp
                    Review.create(movie_id: new_mov.id, user_id: @user.id, movie_rating: movie_rating, review_comment: review_comment)
                end
        puts "Your review is being published! Thanks so much for contributing to MovieBuff!"
        menu
    end


    def edit_review
        puts "What is the title of the movie that you reviewed and want to edit?"
        title = gets.chomp
        movie_id = Movie.where(title: title).ids
        review = Review.find_by(movie_id: movie_id, user_id: @user.id)
        puts "what would you like to update?"
        puts "put 1 to update the movie rating"
        puts "put 2 to update the review comment"
        user_input = gets.chomp
        case user_input
        when "1"
            puts "What would you like your updated rating to be?"
            input = gets.chomp
            review.update(movie_rating: input)
            #NOT WORKING?
        when "2"
            puts "What would you like your updated review comment to be?"
            input = gets.chomp
            review.update(review_comment: input)
            #NOT WORKING?
        end
    end

    def delete_review
        puts "What is the title of the movie that you reviewed and want to delete?"
        title = gets.chomp
        movie_id = Movie.where(title: title).ids
        review = Review.find_by(movie_id: movie_id, user_id: @user.id)
        puts "Are you sure you would like to delete your #{review.movie_rating} star review saying '#{review.review_comment}'? Y/N?"
        user_input = gets.chomp
        case user_input
        when "Y"
            Review.delete(review.id)
            #NOT WORKING?
            puts "Your review has been deleted. What else can we help you with?"
            menu
        when "N"
            puts "Changed your mind? Anything else we can help you with?"
            menu
        end
    end


    def search_movie
        puts "Enter the title of the movie you would like to view:"
        user_input = gets.chomp
        movie_id = Movie.where(title: user_input).ids
        Review.all.where(movie_id: movie_id)
    end


    def see_my_reviews
        Review.all.each do |review|
            if review.user_id == @user.id
                mov = review.movie_id
                movie = Movie.find(mov)
                puts "Movie: #{movie.title} Rating: #{review.movie_rating} Review: #{review.review_comment}"
                # binding.pry
            end
        end
        
    end
    


        
end
