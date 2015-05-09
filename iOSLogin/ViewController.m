//
//  ViewController.h
//  ToDoList
//
//  Created by Javier Rosas on 5/5/15.
//  Copyright (c) 2015 Javier Rosas. All rights reserved.
//

#import "ViewController.h"
#import "User.h"
#import "UserService.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *output;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

    
- (void)requestSucceed {
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)login:(id)sender {
    User *user = [User initWithUsername:self.usernameField.text password:self.passwordField.text];
    UserService *service = [UserService sharedInstance];
    [service login:user withCompletionHandler:^(NSError *error) {
        if (error) {
            self.output.text = @"Wrong username or password";
        } else {
            self.output.text = [NSString stringWithFormat:@"Hola, %@",user.name];
        }
        self.usernameField.text = @"";
        self.passwordField.text = @"";
    }];
    

    
    
//    [USerService loginUser:user withCompletationHandler^(NSError error){
//        if(error){
//            
//        }else{
//            self.outtput.text asdasd
//        }
//        
//    }];
//    }
//usersrives.delegate (iguial) self
//[UserServices loginUser:user]
//}
//
//-success{
//    
}


@end
