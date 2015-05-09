//
//  User.m
//  ToDoList
//
//  Created by Javier Rosas on 5/7/15.
//  Copyright (c) 2015 Javier Rosas. All rights reserved.
//

#import "User.h"

@implementation User

+ (instancetype)initWithUsername:(NSString *)username password:(NSString *)password {
    return [[User alloc] initWithUsername:username password:password];
}

- (instancetype)initWithUsername:(NSString *)username password:(NSString *)password
{
    self = [super init];
    if (self) {
        self.username = username;
        self.password = password;
    }
    return self;
}

@end
