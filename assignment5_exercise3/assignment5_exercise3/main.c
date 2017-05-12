//
//  main.c
//  assignment5_exercise3
//
//  Created by KimSoo Ha on 2017-04-10.
//  Copyright © 2017 KimSoo Ha. All rights reserved.
//

#include <stdio.h>


int countchars(char string[], int ch);


int main(int argc, const char * argv[]) {

    int result = countchars("Hello, world!", 'o');
    printf("%d\n", result);
    return 0;
}



int countchars(char string[], int ch){
    
    int count = 0;
    
    for (int i =0; string[i] != 0; i++) {
        if (string[i] == ch) {
            count ++;
        }
    }
    
    return count;
}

































