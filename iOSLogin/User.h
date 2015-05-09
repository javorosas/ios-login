//
//  User.h
//  ToDoList
//
//  Created by Javier Rosas on 5/7/15.
//  Copyright (c) 2015 Javier Rosas. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property NSString *user_id;
@property NSString *username;
@property NSString *password;
@property NSString *name;
@property NSString *email;

+ (id)initWithUsername:(NSString *)username password:(NSString *)password;

@end