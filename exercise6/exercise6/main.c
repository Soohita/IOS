//
//  main.c
//  exercise6
//
//  Created by KimSoo Ha on 2017-04-09.
//  Copyright © 2017 KimSoo Ha. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

extern int getLine(char [], int);

int main(int argc, const char * argv[]) {

    
    char line[256];
    
    while(getLine(line, 256) != EOF) {
        
        printf("you typed \"%s\"\n", line);
        
        
        for (int i=0; line[i] != '\0'; i++) {
            
            printf("%c\"%d\"\n",line[i],line[i]);
        }
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
