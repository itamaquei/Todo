#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>

int main() {
    srand(time(NULL));
    char *choices[] = {"Rock", "Paper", "Scissors"};
    char *computer_choice = choices[rand() % 3];
    char user_choice[10];
    
    printf("Enter your choice (Rock, Paper, or Scissors): ");
    scanf("%s", user_choice);

    printf("Computer chose: %s\n", computer_choice);
    printf("You chose: %s\n", user_choice);

    if (strcmp(computer_choice, user_choice) == 0)
        printf("It's a tie!\n");
    else if ((strcmp(computer_choice, "Rock") == 0 && strcmp(user_choice, "Scissors") == 0) ||
             (strcmp(computer_choice, "Paper") == 0 && strcmp(user_choice, "Rock") == 0) ||
             (strcmp(computer_choice, "Scissors") == 0 && strcmp(user_choice, "Paper") == 0))
        printf("Computer wins!\n");
    else
        printf("You win!\n");

    return 0;
}
