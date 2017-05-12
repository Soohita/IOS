//
//  main.c
//  excercise7
//
//  Created by KimSoo Ha on 2017-04-09.
//  Copyright © 2017 KimSoo Ha. All rights reserved.
//


#include <stdio.h>
#include <stdlib.h>

extern int getLine(char [], int);
int reverse(char line[], int len);

int main(int argc, const char * argv[]) {
    
    
    char line[256];
    int len;
    
    while((len = getLine(line, 256)) != EOF) {
//        printf("[%s]\n", line);
        reverse(line, len);
        
    
    }
    
    return 0;
}



int reverse(char line[], int len)
{
//    printf("--[%s, %d]\n", line, len);
    for (int i = len-1 ; i >= 0 ; i--) {
        
        printf("%c", line[i]);
    }
    printf("\n");
    
    return  0;
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
