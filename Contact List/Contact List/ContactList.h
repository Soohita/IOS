//
//  ContactList.h
//  Contact List
//
//  Created by KimSoo Ha on 2017-04-25.
//  Copyright © 2017 KimSoo Ha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property NSMutableArray* cList;


- (instancetype)init;
- (void)addContact:(Contact *)newContact;
- (void)printList;
- (Contact*) searchList :(NSInteger)listNum;
- (void) findList :(NSString*) listName;
- (Boolean) checkEmail :(NSString*) mailInput;

@end
