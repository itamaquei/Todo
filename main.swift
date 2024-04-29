import Foundation

func scprrs() {
    let choices = ["Rock", "Paper", "Scissors"]
    let computerChoice = choices.randomElement()!
    
    print("Enter your choice (Rock, Paper, or Scissors): ")
    guard let userChoice = readLine()?.capitalized else { return }
    
    print("Computer chose: \(computerChoice)")
    print("You chose: \(userChoice)")
    
    switch (computerChoice, userChoice) {
    case ("Rock", "Scissors"), ("Paper", "Rock"), ("Scissors", "Paper"):
        print("Computer wins!")
    case ("Scissors", "Rock"), ("Rock", "Paper"), ("Paper", "Scissors"):
        print("You win!")
    default:
        print("It's a tie!")
    }
}

scprrs()
