//
//  InputHandler.m
//  Maths
//
//  Created by Matheus Dussin Bampi on 2017-04-20.
//  Copyright © 2017 Matheus Dussin Bampi. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

NSString * string;

- (instancetype)init {
    self = [super init];
    if (self) {
        char cstring[255];
        fgets(cstring, 255, stdin);
        NSString *s = [NSString stringWithCString:cstring encoding: 1];
        _string = [s stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    }
    return self;
}






@end
