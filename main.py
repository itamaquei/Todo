import random

def scprrs():
    choices = ['Rock', 'Paper', 'Scissors']
    computer_choice = random.choice(choices)
    user_choice = input("Enter your choice (Rock, Paper, or Scissors): ").capitalize()
    
    print(f"Computer chose: {computer_choice}")
    print(f"You chose: {user_choice}")

    if computer_choice == user_choice:
        print("It's a tie!")
    elif (computer_choice == 'Rock' and user_choice == 'Scissors') or \
         (computer_choice == 'Paper' and user_choice == 'Rock') or \
         (computer_choice == 'Scissors' and user_choice == 'Paper'):
        print("Computer wins!")
    else:
        print("You win!")

scprrs()
