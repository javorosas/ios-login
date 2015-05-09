//
//  ViewController.h
//  ToDoList
//
//  Created by Javier Rosas on 5/5/15.
//  Copyright (c) 2015 Javier Rosas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)login:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *usernameField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;


@end

