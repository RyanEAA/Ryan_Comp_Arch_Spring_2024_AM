// Megan Avery

// like imports, getting access to functions in other places
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// macro - a fragment of code with a name
#define NUMBER 5

// the main function
// argc - the number of arguments
// argv - an array of strings, strings are arrays of characters
int main(int argc, char* argv[]) {
    // printf - printing a formatted string
    // don't get newlines for free!
    printf("Hello World!\n");
    printf("🥳\n");
    printf("%d) option %s", 1, "one");

    // C is statically typed, have to include type when creating variables
    int number = 12;
    double decimal = 23.56;
    
    // conditions and loops have java like syntax
    // see cheat sheet on Canvas
    for (int x = 0; x < NUMBER; x++) {
        // do something
    }

    // pointers 
    // a pointer is a variable whose data is a memory address
    int whole_number = 6; // creating a variable
    int* whole_number_pointer = &whole_number; // getting a pointer to the variable (the & symbol)

    *whole_number_pointer = 46; // setting the value of whole_number by dereferencing the pointer

    printf("\n\nwhole_number: %d", whole_number); // printing the value via its original variable
    printf("\n*whole_number_pointer: %d", *whole_number_pointer); // printing the value via dereferencing the pointer
    printf("\n\nwhole_number_pointer: %p", whole_number_pointer); // printing the pointer's value (memory address)

    // adds 4 bytes to the address since ints are 4 bytes in size
    whole_number_pointer += 1; 

    // printing pointer again to show 4 byte difference
    printf("\nwhole_number_pointer after add: %p", whole_number_pointer); 

    // setting aside unititalized space and getting its pointer
    int* int_pointer = (int*) malloc(sizeof(int));
    printf("\n\nmalloced *int_pointer: %d", *int_pointer); // dereferncing the pointer to see what happens

    // setting aside initialized space (all 0s) and gettings its pointers
    double* double_pointer = (double*) malloc(sizeof(double));
    *double_pointer = 102.45; // updating via dereferencing
    printf("\nmalloced *double_pointer: %lf", *double_pointer); // printing the pointer

    // creating a "bad pointer", an address that isn't allowed to be accessed
    int* bad_pointer = (int*) 4;

    // commented out because it causes a SEGFAULT
    // printf("\nbad_pointer: %d", *bad_pointer); // dereferencing a bad pointer

    char phrase[20]; // strings are just arrays of character

    // creating an array of 4 integers
    int* int_array = calloc(4, sizeof(int));

    // updating the element at index 3 to 56
    *(int_array + 3) = 56;
    printf("\n\n3rd element of array: %d\n", *(int_array + 3));

    return 0; // no errors
}