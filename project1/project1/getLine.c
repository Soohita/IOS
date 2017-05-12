//
//  getLine.c
//  draw1a
//
//  Created by KimSoo Ha on 2017-04-17.
//  Copyright © 2017 KimSoo Ha. All rights reserved.
//

#include <stddef.h>
#include <ctype.h>
#include "getLine.h"


int getwords(char *line, char *words[], int maxwords)
{
    char *p = line;
    int nwords = 0;
    
    while(1)
    {
        while(isspace(*p))
            p++;
        
        if(*p == '\0')
            return nwords;
        
        words[nwords++] = p;
        
        while(!isspace(*p) && *p != '\0')
            p++;
        if (*p == '\0')
            return nwords;
        
        *p++ = '\0';
        if (nwords >= maxwords)
            return nwords;
    }
}


