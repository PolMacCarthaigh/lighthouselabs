# It requires the other files/gems that it needs
 
require 'pry'
require './candidates'
require './filters'

require 'colorize'



loop do
  puts "Hello what can I help you with today?: "
  command = gets.chomp
  command, id = command.split(" ")
  id = id.to_i
  break if command == "quit"
  case command
  when "find"
    found = find(id)
    if found
      puts found 
    else
      puts "Invalid input".red
    end
    
  when "all"
    cans = ordered_by_qualifications(@candidates)
    qualified_color(cans)
  when "qualified"
    puts qualified_candidates(@candidates)
    #would you like to continue??

  else
    puts "This an invalid command, please start over."
  end
end
