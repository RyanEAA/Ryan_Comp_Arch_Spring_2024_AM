//Problem 1: File I/O
// Write a program that reads data from a file named "input.txt" and writes the same data to a new file named "output.txt".
//Make sure to handle errors if the input file cannot be opened.

#include <stdio.h>


int main(){
    //file pointer
    FILE* fptr;

    fptr = fopen("input.txt", "r");

    if(fptr != NULL){
        printf("file opened successfully");
    }

    return 0;
}
