//// Ryan Aparicio
////heasd;fasd;kljf 

#include <stdio.h>
#include <stdlib.h>
#include <string.h>


int main(int argc, char* argv[]){
    printf("Hello World");
    printf("🥸");

    printf("%d) option %s", 1, "one");

    

    for (int x = 0; x< NUMBER; x++){
        //do something
    }
    int whole_number = 6;
    int* whole_number_pointer = &whole_number;

    *whole_number_pointer = 46;//* is dereferencing the value
    printf("\n%d", whole_number);
    printf("\n%d", *whole_number_pointer);
    printf("\n%p", whole_number_pointer)

    return 0; // no errors
}