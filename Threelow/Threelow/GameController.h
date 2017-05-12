//
//  GameController.h
//  Threelow
//
//  Created by KimSoo Ha on 2017-05-02.
//  Copyright © 2017 KimSoo Ha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameController : NSObject

@property NSMutableArray* fiveDice;
@property NSMutableArray* holdValue;

- (instancetype)init;
- (void) rollDice;
- (NSString*) printDice;
- (void) holdDie :(NSInteger) h;
- (void) resetDice;
- (NSInteger) addScore;

@end
