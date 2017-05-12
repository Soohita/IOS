//
//  ScoreKeeper.m
//  Maths
//
//  Created by Matheus Dussin Bampi on 2017-04-20.
//  Copyright © 2017 Matheus Dussin Bampi. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

NSInteger right;
NSInteger wrong;

- (instancetype)init
{
    self = [super init];
    if (self) {
        _right = 0;
        _wrong = 0;
    }
    return self;
}

- (NSString *)description
{
    float percent = (100*_right)/(_right+_wrong);
    return [NSString stringWithFormat:@"Score: %ld right, %ld wrong ----- %.2f%%", (long)_right, (long)_wrong, percent];
}


@end
