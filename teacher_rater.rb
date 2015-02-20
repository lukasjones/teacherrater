require_relative 'config/application'
require_relative 'app/controllers/app_controller'

puts "Put your application code in #{File.expand_path(__FILE__)}"


Controller.run!
