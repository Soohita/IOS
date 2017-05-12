//
//  GameController.m
//  Threelow
//
//  Created by KimSoo Ha on 2017-05-02.
//  Copyright © 2017 KimSoo Ha. All rights reserved.
//

#import "GameController.h"
#import "Dice.h"

@implementation GameController


NSMutableArray* fiveDice;
NSMutableArray* holdValue;



- (instancetype)init
{
    self = [super init];
    if (self) {
        
        _fiveDice = [[NSMutableArray alloc]init];
        _holdValue = [[NSMutableArray alloc] init];
        
        for (int i= 0; i < 5; i++) {
            _fiveDice[i] = [[Dice alloc] init];
            _holdValue[i] = @NO;
        }
    }
    return self;
}

- (void) rollDice {
        for (int i = 0;  i < 5; i++) {
            if ([_holdValue[i]  isEqual: @NO]) {
                [_fiveDice[i] randomNum];
            } else if ([_holdValue[i]  isEqual: @YES]){
                continue;
              }
            
        }
    }

- (NSString*) printDice {
    NSMutableString* output = [[NSMutableString alloc]init];
    for (int i=0; i < 5; i++) {
        if([_holdValue[i] isEqual:@NO]){
            [output appendString:[NSString stringWithFormat:@"\nIndex Number: %d Dice: %@", i ,[_fiveDice[i] description]]];
        } else{
            [output appendString:[NSString stringWithFormat:@"\nIndex Number: [%d] Dice: %@", i ,[_fiveDice[i] description]]];
        }
    }
    NSInteger s = self.addScore;
    [output appendString: [NSString stringWithFormat:@"\n>>>>> Score: %ld", s]];
    return output;
}

- (void) holdDie :(NSInteger)h {
    if ([_holdValue[h]  isEqual: @NO]) {
         _holdValue[h] = @YES;
    } else {
        _holdValue[h] = @NO;
    }
}

- (void) resetDice {
    for (int i = 0; i < 5; i++) {
        _holdValue[i] = @NO;
    }
}

- (NSInteger) addScore {
    NSInteger score = 0;
    for (int i= 0; i < 5; i++) {
        if([_holdValue[i] isEqual: @YES]){
//            Dice* d = _fiveDice[i];
//            NSInteger dnum = [d diceNum];
//            score = dnum + score;
            score = [_fiveDice[i] diceNum] + score;
            
//            [score appendString:[NSString stringWithFormat:@"Score: %@", ]];
            
        }
    }
    return score;
}






@end
