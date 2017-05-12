//
//  main.c
//  project1
//
//  Created by KimSoo Ha on 2017-04-17.
//  Copyright © 2017 KimSoo Ha. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>


#include "getLine.h"

#define date system( "date" )

int main(int argc, const char * argv[]) {

    
//    printf("You have %d argument(s)\n", argc);
//    for (int i = 0; i < argc; i++) {
//        printf("%d %s\n", i, argv[i]);
//    }
    
    
    char *words[] = {"Image", "lineTo", "End", "print", "draw", "translate", "child", "#" };
    int count = 0;
    
    

    

    FILE *file;
    file = fopen(argv[1], "r");
    
    char text[256];
    int i;

   
 
    
    if (file) {
        fflush(stdout);
        printf("./draw1a started on %c\n", date);
        
        
        
        
        while (fgets(text, 256, file) != NULL) {
            
            printf("line: %s\n", text);
            
            int nwords;
            nwords = getwords(text, words, 10);
            for(i = 0; i < nwords; i++)
                printf("%s\n", words[i]);
            
            
            
            
            
//                        for (int i = 0; i < 8; i++) {
//                            if () {
//                                count ++;
//                                printf("sss %d/n", count);
//                            }
//                        }
            
            
        }
        
        
        
        

        
        fclose(file);
    }
  
    
    return 0;
}
