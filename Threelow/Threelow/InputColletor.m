//
//  InputColletor.m
//  Threelow
//
//  Created by KimSoo Ha on 2017-04-28.
//  Copyright © 2017 KimSoo Ha. All rights reserved.
//

#import "InputColletor.h"

@implementation InputColletor


- (NSString*)inputForPrompt:(NSString*)promptString{
    // 255 unit long array of characters
    char inputChars[255];
    
    NSLog(@"%@", promptString);
    // limit input to max 255 characters
    fgets(inputChars, 255, stdin); // get input from standard input to put in [inpurChars]
    
    // convert char array to an NSString object
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    
    inputString = [inputString stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    
    // print NSString object
    return inputString;
}

@end
