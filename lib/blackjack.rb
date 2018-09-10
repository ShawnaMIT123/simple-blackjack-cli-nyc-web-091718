def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(num)
  puts "Your cards add up to #{num.to_s}"
  return num
end

def $prompt_user
 puts "Type 'h' to hit or 's' to stay"
end

def $get_user_input
  user_input = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  display_card_total(deal_card + deal_card)
end

def hit?(num)
 $prompt_user
 $get_user_input
  if user_input == 'h'
   display_card_total(num + deal_card)
  elsif user_input == 's'
    display_card_total(num)
  else 
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  Welcome
  initial_round
  hit?
  
end
    
