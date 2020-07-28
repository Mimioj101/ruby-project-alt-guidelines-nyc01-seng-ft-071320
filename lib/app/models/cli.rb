require 'pry'

class CommandLineInterface

    

    def greet

        user = User.login
        puts "Great, you're logged in"
        puts "See any good movies lately? Tell us about it!"
        puts "Enter a movie below to start your review:"
        binding.pry
    end

end
