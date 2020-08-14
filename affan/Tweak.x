
#include <UIKit/UIKit.h>

%hook SBStatusBarManager

- (void)handleStatusBarTapWithEvent:(id)arg1{

UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Hello Affan" message:@"This is my First Tweak" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
[alert show];

%orig;

}

%end
