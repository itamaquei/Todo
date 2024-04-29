use rand::seq::SliceRandom;
use std::io;

fn main() {
    let choices = ["Rock", "Paper", "Scissors"];
    let computer_choice = choices.choose(&mut rand::thread_rng()).unwrap();
    
    println!("Enter your choice (Rock, Paper, or Scissors): ");
    let mut user_choice = String::new();
    io::stdin().read_line(&mut user_choice).expect("Failed to read line");
    let user_choice = user_choice.trim().to_string();
    
    println!("Computer chose: {}", computer_choice);
    println!("You chose: {}", user_choice);

    match (computer_choice.as_ref(), user_choice.as_ref()) {
        ("Rock", "Scissors") | ("Paper", "Rock") | ("Scissors", "Paper") => println!("Computer wins!"),
        ("Scissors", "Rock") | ("Rock", "Paper") | ("Paper", "Scissors") => println!("You win!"),
        _ => println!("It's a tie!"),
    }
}
