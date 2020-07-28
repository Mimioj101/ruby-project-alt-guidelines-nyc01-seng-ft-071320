require 'pry'

class User < ActiveRecord::Base
     has_many :reviews
     has_many :movies, through: :reviews
    


     def self.login
          puts "Hey! Welcome to FilmBuff, your opinion matters to film!"
          puts "Enter your username:"
          username = gets.chomp
          puts "Enter your password:"
          password = gets.chomp
          user = User.find_by(username: username, password: password)
      end








end