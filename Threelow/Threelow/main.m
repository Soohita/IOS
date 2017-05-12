//
//  main.m
//  Threelow
//
//  Created by KimSoo Ha on 2017-04-28.
//  Copyright © 2017 KimSoo Ha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputColletor.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
     
        
        InputColletor* InputRoll = [[InputColletor alloc]init];
        GameController* game = [[GameController alloc]init];
        
        NSInteger count = 0;
       
        while (YES) {
            
            
            NSString* roll = [InputRoll inputForPrompt:@"\n1.roll : Roll the dice \n2.reset : Reset all the result "];
            
            
            if ([roll isEqualToString:@"roll"]) {
                
                count = count + 1; // Counter of user click
 
                [game rollDice]; //Roll the dice
                NSLog(@"%@\n>>>>> You rolled %ld", [game printDice], count);
                    askhold:;
                    NSString* hold = [InputRoll inputForPrompt:@"\nChoose the index number to hold!!: "];
                    NSArray * holdList = [hold componentsSeparatedByString:@" "];
                    
                    NSCharacterSet* nonDigitis = [[NSCharacterSet decimalDigitCharacterSet] invertedSet];
                    
                    for (int i = 0; i < [holdList count]; i++) {
                        if([holdList[i] rangeOfCharacterFromSet: nonDigitis].location == NSNotFound){
                            [game holdDie: [holdList[i] intValue]];
                        }else
                            goto askhold;
                    }
            } else if ([roll isEqualToString:@"reset"]){
                [game resetDice];

            }
            
            
        }
        
        
        
        
        
        
        
    }
    return 0;
}
