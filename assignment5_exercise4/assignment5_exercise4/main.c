//
//  main.c
//  assignment5_exercise4
//
//  Created by KimSoo Ha on 2017-04-10.
//  Copyright © 2017 KimSoo Ha. All rights reserved.
//

#include <stdio.h>
#include <string.h>



int getLine(char line[], int max);

int main(int argc, const char * argv[]) {

    
    
    char first [30] = getchar();
    char second [] ;
    
    

        
    strcat(first, second);
        printf("%s\n", );
        
        

    
    
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
