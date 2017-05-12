//
//  Patient.m
//  Patient&doctor
//
//  Created by KimSoo Ha on 2017-05-04.
//  Copyright © 2017 KimSoo Ha. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient

NSString* PatientName;
NSInteger* age;

- (instancetype)init:(NSString*)name withAge:(NSInteger*)age
{
    self = [super init];
    if (self) {
        _PatientName = name;
        _age = age;
    }
    return self;
}



- (void) visitDoctor: (Doctor *) doctor {
    
    
    
}


@end
