//
//  Dice.m
//  Threelow
//
//  Created by KimSoo Ha on 2017-04-28.
//  Copyright © 2017 KimSoo Ha. All rights reserved.
//

#import "Dice.h"

@implementation Dice




NSInteger diceNum;


- (void) randomNum {
    _diceNum = arc4random_uniform(6)+1;
}


- (NSString*) description {
    return [NSString stringWithFormat:@"%ld", _diceNum];
}

@end
