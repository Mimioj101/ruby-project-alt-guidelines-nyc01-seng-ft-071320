require 'pry'

class User < ActiveRecord::Base
     has_many :reviews
     has_many :movies, through: :reviews
    
    # def self.login
    #     puts "Enter or create your username below:"
    #     username = gets.chomp
    #     if User.exists?(username: username) == true
    #         user = User.where(username: username).ids
    #         puts "Welcome back #{username}! Enter your password:"
    #         password = gets.chomp
    #         #something if their password is incorrect?
    #         puts "Welcome!"
    #         user
    #     else
    #         puts "Sorry, we can't find your username in our system. Please create a new account here:"
    #         self.signup
    #     end
       
        
    # end 


    # def self.signup
    #     puts "What would you like your username to be?"
    #     username = gets.chomp
    #     puts "Now enter a password for your MovieBuff account:"
    #     password = gets.chomp
    #     user = User.create(username: username, password: password)
    #     user
    # end


    # def write_review
    #     puts "What movie would you like to write a review for?"
    #         title = gets.chomp
    #         movie_id = Movie.where(title: title).ids
    #         # movie = Movie.find_by(title: title)
    #             if Movie.exists?(title: title)
    #                 puts "Awesome! Out of 5 stars, how many stars would you rate #{title}?"
    #                 movie_rating = gets.chomp
    #                 puts "What would you like to write about #{title}?"
    #                 review_comment = gets.chomp
    #                 Review.create(movie_id: movie_id, user_id: user.id, movie_rating: movie_rating, review_comment: review_comment)
    #             else
    #                 puts "What genre is #{title}?"
    #                 genre = gets.chomp
    #                 puts "How many minutes is #{title}?"
    #                 length = gets.chomp
    #                 new_mov = Movie.create(title: title, genre: genre, length: length)
    #                 puts "Awesome! Out of 5 stars, how many stars would you rate #{title}?"
    #                 movie_rating = gets.chomp
    #                 puts "What would you like to write about #{title}?"
    #                 review_comment = gets.chomp
    #                 Review.create(movie_id: new_mov.id, user_id: user.id, movie_rating: movie_rating, review_comment: review_comment)

    #             end
    # end

 

    



    # def self.sign_up
    #     puts "Welcome to Filmbuff, your review is important to us"
    #     puts " please enter your username"
    #     username= gets.chomp
    #     puts " Enter password"
    #     password= gets.chomp 
    #      user= User.create(username: username, password: password)
    # end 

    # def write_comments
    #     Review.create(movie_id: movie, user_id: self, movie_rating: movie_rating, review_commenr: review_comment)
    # end
    # binding.pry




end