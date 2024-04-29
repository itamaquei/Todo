#include <iostream>
#include <cstdlib>
#include <ctime>
using namespace std;

int main() {
    srand(time(0));
    string choices[3] = {"Rock", "Paper", "Scissors"};
    string computer_choice = choices[rand() % 3];
    string user_choice;
    
    cout << "Enter your choice (Rock, Paper, or Scissors): ";
    cin >> user_choice;

    cout << "Computer chose: " << computer_choice << endl;
    cout << "You chose: " << user_choice << endl;

    if (computer_choice == user_choice)
        cout << "It's a tie!" << endl;
    else if ((computer_choice == "Rock" && user_choice == "Scissors") ||
             (computer_choice == "Paper" && user_choice == "Rock") ||
             (computer_choice == "Scissors" && user_choice == "Paper"))
        cout << "Computer wins!" << endl;
    else
        cout << "You win!" << endl;

    return 0;
}
