//
//  InputCollector.m
//  Contact List
//
//  Created by KimSoo Ha on 2017-04-25.
//  Copyright © 2017 KimSoo Ha. All rights reserved.
//

#import "InputCollector.h"


@implementation InputCollector

    NSMutableArray* history;

- (instancetype)init {
    self = [super init];
    if (self) {
        _history = [[NSMutableArray alloc] init];
        [_history addObject: @""];
        [_history addObject: @""];
        [_history addObject: @""];
    }
    return self;
}

- (NSString*)inputForPrompt:(NSString*)promptString{
    // 255 unit long array of characters
    char inputChars[255];
    
    NSLog(@"%@", promptString);
    // limit input to max 255 characters
    fgets(inputChars, 255, stdin); // get input from standard input to put in [inpurChars]
    
    // convert char array to an NSString object
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    
    inputString = [inputString stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    if (_history[0] == NULL) {
        _history[0] = inputString;
    } else if (_history[1] == NULL){
        _history[1] = inputString;
    } else if (_history[2] == NULL){
        _history[2] = inputString;
    } else {
        _history[0] = _history[1];
        _history[1] = _history[2];
        _history[2] = inputString;
    }
    
    // print NSString object
    return inputString;
}

- (void) historyList {
    for (int i =0; i < [self.history count]; i++){
        NSLog(@"%@", _history[i]);
    }
}


@end
