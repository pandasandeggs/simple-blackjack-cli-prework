$card_total = 0

def welcome
  puts "Welcome to the Blackjack Table"
end

def  deal_card
  1 + rand(11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  $card_total = deal_card + deal_card
  display_card_total($card_total)
  $card_total
end

def hit?(number)
  prompt_user 
  word = get_user_input
  if word == "s"
     return number
  elsif word == "h"
    new_card = deal_card + number
    return new_card
  else 
    invalid_command
    prompt_user
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################
 
def runner
  welcome #
  until $card_total >= 21
    initial_round
    $card_total = hit?($card_total)
    display_card_total($card_total)
  end
end_game($card_total)
end


    


    
