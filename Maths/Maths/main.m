//
//  main.m
//  Maths
//
//  Created by Matheus Dussin Bampi on 2017-04-19.
//  Copyright © 2017 Matheus Dussin Bampi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSInteger answer;
        NSLog(@"MATHS by Matheus Dussin Bampi");
        ScoreKeeper *score = [[ScoreKeeper alloc] init];
        while(true){
            AdditionQuestion *a = [[AdditionQuestion alloc] init];
            NSLog(@"\n%@", a.question);
            
            InputHandler *input = [[InputHandler alloc] init];
            if([input.string isEqual:@"quit"]) break;
            
            answer = [input.string integerValue];
            if(answer == a.answer){
                score.right++;
                NSLog(@"\nRight");
            }else{
                score.wrong++;
                NSLog(@"\nWrong!");
            }
        }
        NSLog(@"\n%@", [score description]);
    }
    return 0;
}
