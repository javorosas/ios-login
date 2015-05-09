//
//  UserService.h
//  ToDoList
//
//  Created by Javier Rosas on 5/7/15.
//  Copyright (c) 2015 Javier Rosas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

@interface UserService : NSObject

+ (id)sharedInstance;
- (void)login:(User *)user withCompletionHandler:(void (^)(NSError *error))handler;

@end
