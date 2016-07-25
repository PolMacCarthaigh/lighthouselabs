require 'colorize'

# Test
# def with_tax(subtotal)
#   tax_amount = subtotal * 0.20
#   subtotal + tax_amount
# end

# puts with_tax(100.00)

def intro
  puts "Math's".colorize(:red)
  puts "player 1 name".colorize(:green)
  @player1 = gets.chomp!
  puts "player 2 name".colorize(:green )
  @player2 = gets.chomp!

  @players = [ {lives: 2, name: "#{@player1}"}, {lives: 2, name: "#{@player2}"} ]
  @turn = -1

end


def current_player
  @players[@turn % @players.count]
end


#Mentor was great helping with this

def generate_question

  @num1 = rand(1...10)
  @num2 = rand(1...10)

  operators = [:*, :+, :- ]
  @op = operators.sample
  @result = @num1.send(@op, @num2).round(2)

end

def user_prompt
  
  print "#{current_player[:name]}, what is #{@num1} #{@op} #{@num2}? ".colorize(:green)
  @answer = gets.chomp.to_i

end

def verify
   
  if @answer == @result
    puts "You've got some smarts!".colorize(:green)
  else 
    puts "Go back to school!!!!!!".colorize(:red)
    current_player[:lives] -= 1
  end
end


def display_results
  puts "Hahahahahahaha #{current_player[:name]} you're a LOSER!!!".colorize(:green).on_red.underline
end

def game
  intro 

  loop do
    @turn += 1  % @players.count
    generate_question
    user_prompt
    verify
    break if current_player[:lives] == 0
  end
  display_results
end

game
