



#include <stdio.h>
#include <stdlib.h>
#include "getline.h"

int main(int argc, const char * argv[]) {
 
    
    int number;
    char line[256];
    float sum = 0;
    int count = 0;
    float average;
  
    
    while(getLine(line, 256) != EOF) {
        number = atoi(line);
        printf("you typed \"%d\"\n", number);
        
        sum = sum + number;
        count++;
        
        average = sum / count;
        
        printf("Average is \"%f\"\n", average);
        
    }
    
    
    
    
    
    
    
    return 0;
    
    
}

