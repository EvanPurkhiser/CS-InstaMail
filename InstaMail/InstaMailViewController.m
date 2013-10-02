//
//  InstaMailViewController.m
//  InstaMail
//
//  Created by Michael Collard on 9/23/13.
//  Copyright (c) 2013 collard. All rights reserved.
//

#import "InstaMailViewController.h"

@interface InstaMailViewController ()
{
    NSMutableDictionary *_actionsAndFeelings;
}

@end

@implementation InstaMailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Load the actions and feelings data
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"ActionsAndFeelings" ofType:@"plist"];
    _actionsAndFeelings = [NSMutableDictionary dictionaryWithContentsOfFile:plistPath];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
