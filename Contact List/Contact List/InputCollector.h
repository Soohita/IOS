//
//  InputCollector.h
//  Contact List
//
//  Created by KimSoo Ha on 2017-04-25.
//  Copyright © 2017 KimSoo Ha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputCollector : NSObject

@property NSMutableArray* history;



- (NSString*)inputForPrompt:(NSString*)promptString;
- (void) historyList;

@end
