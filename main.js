function scprrs() {
    const choices = ["Rock", "Paper", "Scissors"];
    const computerChoice = choices[Math.floor(Math.random() * 3)];
    const userChoice = prompt("Enter your choice (Rock, Paper, or Scissors): ");

    console.log("Computer chose: " + computerChoice);
    console.log("You chose: " + userChoice);

    if (computerChoice === userChoice)
        console.log("It's a tie!");
    else if ((computerChoice === "Rock" && userChoice === "Scissors") ||
             (computerChoice === "Paper" && userChoice === "Rock") ||
             (computerChoice === "Scissors" && userChoice === "Paper"))
        console.log("Computer wins!");
    else
        console.log("You win!");
}

scprrs();
