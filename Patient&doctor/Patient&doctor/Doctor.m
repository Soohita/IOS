//
//  Doctor.m
//  Patient&doctor
//
//  Created by KimSoo Ha on 2017-05-04.
//  Copyright © 2017 KimSoo Ha. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor

NSString* doctorName;
NSString* specialization;


- (instancetype)init :(NSString*)name withSpecialization:(NSString*)sp
{
    self = [super init];
    if (self) {
        _doctorName = name;
        _specialization = sp;
    }
    return self;
}





@end
