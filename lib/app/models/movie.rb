require 'pry'

class Movie < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews
    
    # def movies 
    #     Movie.all.each do |movie|
    #         puts movie.title
    #     end 
    #end 
    # def movies
    #     Movie.map{|movie| movie.title}

    # end 


end