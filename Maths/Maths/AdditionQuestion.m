//
//  AdditionQuestion.m
//  Maths
//
//  Created by Matheus Dussin Bampi on 2017-04-19.
//  Copyright © 2017 Matheus Dussin Bampi. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

NSString * question;
NSInteger answer;

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSInteger n1 = arc4random_uniform(90)+11;
        NSInteger n2 = arc4random_uniform(90)+11;
        _answer = n1+n2;
        _question = [NSString stringWithFormat: @"%ld + %ld?", (long)n1, (long)n2];
    }
    return self;
}

@end
