//
//  main.m
//  Contact List
//
//  Created by KimSoo Ha on 2017-04-24.
//  Copyright © 2017 KimSoo Ha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"
#import "ContactList.h"
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        

        
        ContactList* list = [[ContactList alloc]init];
        //Put array out side of while loop

        
        InputCollector* Input = [[InputCollector alloc] init];
        
//
        
        while (YES) {
            
            NSLog(@"\nNew - Create a new contact\nlist - List all contacts \nShow - Show the lists\n Find - Search the contact\nquit - Exit Application");
            NSString* InputStart = [Input inputForPrompt:@"Input: "];
            NSArray * showList = [InputStart componentsSeparatedByString:@" "];
            
            
            
           if([InputStart isEqualToString:@"new"]){
               
                NSMutableDictionary* phoneContact = [NSMutableDictionary dictionary];
                NSString* usernameInput = [Input inputForPrompt:@"Enter your user name"];
                NSString* useremailInput = [Input inputForPrompt:@"Enter your e-mail"];
               
               if ([list checkEmail:useremailInput]) {
                   NSLog(@"The E-mail is alrealy used");
                   continue; // Skip the rest of the code and go back to while loop
               }
               
               
               
               
               NSString* userlabelInput;
               do{
                   userlabelInput = [Input inputForPrompt:@"Choose the label (Home/Moblie/Company) :"];
                   if ([userlabelInput isEqualToString:@"done"]) {
                       break;
                   }
                   NSString* userphoneInput = [Input inputForPrompt:@"Enter your number: "];
                   phoneContact[userlabelInput] = userphoneInput;
               }while (YES);
               
               
               
               
                
               Contact* newContact = [[Contact alloc]init:usernameInput withEmail:useremailInput withPhone:phoneContact];
                [list addContact:newContact];
               
               
            }else if([InputStart isEqualToString:@"list"]){
                [list printList]; 
            }
            else if ([showList[0] isEqualToString:@"show"]){
                NSLog(@"%@", [list searchList: [showList[1] intValue]]);
            }
            else if ([showList[0] isEqualToString:@"find"]){
                [list findList:showList[1]];
            }
            else if ([InputStart isEqualToString:@"quit"]) {
                break;
            }else if ([InputStart isEqualToString:@"history"]) {
                [Input historyList];
            }
            
            
        }
        
        
        
        
       // NSLog(@"\n%@",usernameInput);
    }
    return 0;
}
