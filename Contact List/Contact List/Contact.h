//
//  Contact.h
//  Contact List
//
//  Created by KimSoo Ha on 2017-04-25.
//  Copyright © 2017 KimSoo Ha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property NSString* name;
@property NSString* email;
@property NSDictionary* phone;

- (instancetype)init:(NSString*)name withEmail:(NSString*)email withPhone:(NSDictionary*) phone;
- (NSString*) description;

@end
