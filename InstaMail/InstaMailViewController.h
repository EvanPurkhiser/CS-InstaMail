#import <UIKit/UIKit.h>

@interface InstaMailViewController : UIViewController
<UIPickerViewDataSource, UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *actionAndFeelingPicker;
@property (weak, nonatomic) IBOutlet UITextField  *notesTextField;

-(IBAction)sendEmail:(id)sender;

-(IBAction)noteDone:(id)sender;

@end
