//
//  main.c
//  assignment5
//
//  Created by KimSoo Ha on 2017-04-10.
//  Copyright © 2017 KimSoo Ha. All rights reserved.
//

#include <stdio.h>
#include "getLine.h"
#define MAXLINE 256

int main(int argc, const char * argv[]) {
    
    
    char line[MAXLINE];
    
    while(getLine(line, MAXLINE) != EOF) {
        
        printf("you typed \"%s\"\n", line);
        
        
        for (int i=0; line[i] != '\0'; i++) {
            
            printf("%c\n",line[i]);
        }
    }
    
    return 0;
}


