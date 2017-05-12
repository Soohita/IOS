


#include <stdio.h>
#include <stdlib.h>
#include <string.h>

extern int getLine(char [], int);

int main(int argc, const char * argv[]) {

 
    char line[256];
    float amount;
    float balance = 0;
    
    while(getLine(line, 256) != EOF) {
        printf("you typed \"%s\"\n", line);

        if (strcmp(line, "check") == 0) {
            printf("Pleas, put amount\n");
            getLine(line, 256);
            amount = atof(line);
            balance = balance - amount;
            printf("balance :  \"%f\"\n", balance);
        }
        else if(strcmp(line, "deposit") == 0){
            printf("Pleas, put amount\n");
            getLine(line, 256);
            amount = atof(line);
            balance = balance + amount;
            printf("balance : \"%f\"\n", balance);
        }
        else{
        
            printf("Put only check of deposit! \n");
            
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
