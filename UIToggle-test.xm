#import "fakesubstrate.h"
#import "UIToggle.h"
@interface testtoggle : NSObject
{
}
-(void) test;
@end
@implementation testtoggle
-(void) test
{
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"UISettings" message:@"This is a test toggle" delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles:nil];
	[alert show];
	[alert release];
}
@end
%ctor
{
	// runtime	

	UISettingsToggleController* handler=[objc_getClass("UISettingsToggleController") sharedController];
	id toggleController=[testtoggle new];
	
	// basic settings

	[handler createToggleWithTitle:@"Test" andImage:@"TestIcon.png" andSelector:@selector(test) toTarget:toggleController];
}
