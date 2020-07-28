require_relative '../config/environment'

cli = CommandLineInterface.new
cli.greet

User.login
cli.menu
