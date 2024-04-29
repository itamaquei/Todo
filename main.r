CHOICES = ["Rock", "Paper", "Scissors"]

def scprrs
  computer_choice = CHOICES.sample
  print "Enter your choice (Rock, Paper, or Scissors): "
  user_choice = gets.chomp.capitalize

  puts "Computer chose: #{computer_choice}"
  puts "You chose: #{user_choice}"

  case [computer_choice, user_choice]
  when ['Rock', 'Scissors'], ['Paper', 'Rock'], ['Scissors', 'Paper']
    puts "Computer wins!"
  when ['Scissors', 'Rock'], ['Rock', 'Paper'], ['Paper', 'Scissors']
    puts "You win!"
  else
    puts "It's a tie!"
  end
end

scprrs
