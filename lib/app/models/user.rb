require 'pry'

class User < ActiveRecord::Base
     has_many :reviews
     has_many :movies, through: :reviews
    
    def self.login
        puts "To login please, Enter your username"
        username = gets.chomp
        puts "Enter your password"
        password = gets.chomp
        puts "Great! you are all logged in!"

        user = User.find_by(username: username, password: password)
    end 

    



    



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