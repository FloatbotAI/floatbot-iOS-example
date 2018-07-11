//
//  floatbot-iOS-example
//
//  Created by Jhanvi on 11/07/18.
//  Copyright © 2018 Jhanvi. All rights reserved.
//

#import "startChatViewController.h"
#import <floatbot/floatbot.h>

@interface startChatViewController ()

@end

@implementation startChatViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController.navigationBar setHidden:TRUE];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)nextview:(id)sender {
    [floatbotManager startChatWithViewController:self];
}

@end
