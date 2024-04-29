using System;

class Program {
    static void Main() {
        string[] choices = {"Rock", "Paper", "Scissors"};
        Random rnd = new Random();
        string computerChoice = choices[rnd.Next(0, 3)];
        
        Console.Write("Enter your choice (Rock, Paper, or Scissors): ");
        string userChoice = Console.ReadLine();

        Console.WriteLine($"Computer chose: {computerChoice}");
        Console.WriteLine($"You chose: {userChoice}");

        if (computerChoice == userChoice)
            Console.WriteLine("It's a tie!");
        else if ((computerChoice == "Rock" && userChoice == "Scissors") ||
                 (computerChoice == "Paper" && userChoice == "Rock") ||
                 (computerChoice == "Scissors" && userChoice == "Paper"))
            Console.WriteLine("Computer wins!");
        else
            Console.WriteLine("You win!");
    }
}
