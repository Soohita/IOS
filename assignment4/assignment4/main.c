//
//  main.c
//  assignment4
//
//  Created by KimSoo Ha on 2017-04-09.
//  Copyright © 2017 KimSoo Ha. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>



extern int getLine(char [], int);

int main(int argc, const char * argv[]) {
//    int c;
//
//    c = getchar();
//    
//    while(c != EOF)
//    {
//        putchar(c);
//        c = getchar();
//    }
    
    
//    return 0;


    int number;
    char line[256];
    float sum = 0;
    int count = 0;
    float average;
//
//    while((c = getchar()) != EOF)
//        printf("you typed '%c'\n", c);
    
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



int getLine(char line[], int max)
{
    int nch = 0;
    int c;
    max = max - 1;			/* leave room for '\0' */
    
    while((c = getchar()) != EOF)
    {
        if(c == '\n')
            break;
        
        if(nch < max)
        {
            line[nch] = c;
            nch = nch + 1;
        }
    }
    
    if(c == EOF && nch == 0)
        return EOF;
    
    line[nch] = '\0';
    return nch;
    
    
    
    
}






