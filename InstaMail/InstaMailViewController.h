//
//  InstaMailViewController.h
//  InstaMail
//
//  Created by Michael Collard on 9/23/13.
//  Copyright (c) 2013 collard. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InstaMailViewController : UIViewController
<UIPickerViewDataSource, UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *actionAndFeelingPicker;

-(IBAction)sendEmail:(id)sender;

@end
