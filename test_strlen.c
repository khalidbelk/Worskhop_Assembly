/**
 * @ Author: Khalid
 * @ Description: test_strlen
*/

// This C file is an example of how you can test your asm file's function
// You'll be able to see what the real function returns and yours too.
// All you have to do now is make your own my_strlen function and test :) !

int my_strlen(char *str);

#include <stdio.h>
#include <string.h>

int main() {
    char *str = "Hello TEK1's !";
    int real_result = strlen(str);
    int our_result = my_strlen(str);

    printf("This is the real strlen's result: %d\n", real_result);
    printf("This is OUR strlen's result: %d\n", our_result);

    return 0;
}