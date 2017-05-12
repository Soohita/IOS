//
//  ContactList.m
//  Contact List
//
//  Created by KimSoo Ha on 2017-04-25.
//  Copyright © 2017 KimSoo Ha. All rights reserved.
//

#import "ContactList.h"
#import "Contact.h"

@implementation ContactList
NSMutableArray* cList;

- (instancetype)init
{
    self = [super init];
    if (self) {
        _cList = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addContact:(Contact *)newContact{
    [_cList addObject: newContact];
    
}

- (Contact*) searchList :(NSInteger)listNum{
    return [_cList objectAtIndex:listNum];
}

- (void) printList {
    for (int i =0; i < [_cList count]; i++) {
        NSLog(@"%d:%@",i, [[_cList objectAtIndex:i] name]);
    }
}

- (void) findList :(NSString*) listName {
    for (Contact* contact in self.cList) {
        if ([contact.name containsString:listName]||[contact.email containsString:listName]) {
            NSLog(@"%@", [contact description]);
        }
    }
}

- (Boolean) checkEmail :(NSString*) mailInput {
    for (Contact* contact in self.cList) {
        if ([mailInput isEqualToString:contact.email]) {
            return YES;
        }
    }
    return NO;
}




@end
