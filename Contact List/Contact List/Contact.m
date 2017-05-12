//
//  Contact.m
//  Contact List
//
//  Created by KimSoo Ha on 2017-04-25.
//  Copyright © 2017 KimSoo Ha. All rights reserved.
//

#import "Contact.h"

@implementation Contact

NSString* name;
NSString* email;
NSDictionary* phone; // Key and Value

- (instancetype)init:(NSString*)name withEmail:(NSString*)email withPhone:(NSDictionary*) phone
{
    self = [super init];
    if (self) {
        _name = name;
        _email = email;
        _phone = phone;
    }
    return self;
}

- (NSString*) description {
    
    return [NSString stringWithFormat: @"\nName: %@\nE-mail: %@\nContact: %@", _name, _email, self.listNum];
}

- (NSString*) listNum {
    NSMutableString* output = [NSMutableString string];
    for (id key in self.phone){
         [output appendString: [NSString stringWithFormat:@"key: \n%@ Number: %@",key, self.phone[key]]];
    }
    return output;
}



@end
