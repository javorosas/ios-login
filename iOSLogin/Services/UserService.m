//
//  UserService.m
//  ToDoList
//
//  Created by Javier Rosas on 5/7/15.
//  Copyright (c) 2015 Javier Rosas. All rights reserved.
//

#import "UserService.h"
#import "User.h"
#import <AFNetworking/AFNetworking.h>


@implementation UserService

+ (instancetype)sharedInstance {
    static UserService *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[UserService alloc] init];
    });
    return sharedInstance;
}

-(void)login:(User *)user withCompletionHandler:(void (^)(NSError *error))handler  {
    NSString *url = @"http://www.wavestack.com/auth/login";
    NSDictionary *credentials = @{@"emailOrUsername": user.username, @"password": user.password};
    
    AFHTTPRequestOperationManager *loginManager = [AFHTTPRequestOperationManager manager];
    [loginManager POST:url parameters:credentials
               success:^(AFHTTPRequestOperation *operation, id responseObject) {
                   user.name = responseObject[@"user"][@"name"];
                   user.email = responseObject[@"user"][@"email"];
                   if (handler) {
                       handler(nil);
                   }
               } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                   handler(error);
               }];
}

@end

