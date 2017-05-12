//
//  ScoreKeeper.h
//  Maths
//
//  Created by Matheus Dussin Bampi on 2017-04-20.
//  Copyright © 2017 Matheus Dussin Bampi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property NSInteger right;
@property NSInteger wrong;

-(instancetype) init;

-(NSString *) description;


@end
