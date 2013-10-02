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
    NSArray *_actionsAndFeelings;
}

@end

@implementation InstaMailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Load the actions and feelings data
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"ActionsAndFeelings" ofType:@"plist"];
    NSDictionary *plist = [NSDictionary dictionaryWithContentsOfFile:plistPath];

    _actionsAndFeelings = @[[plist valueForKey:@"Actions"], [plist valueForKey:@"Feelings"]];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return _actionsAndFeelings.count;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return ((NSArray *) [_actionsAndFeelings objectAtIndex:component]).count;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [(NSArray *) [_actionsAndFeelings objectAtIndex:component] objectAtIndex:row];
}

@end
