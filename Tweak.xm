#include <substrate.h>

@interface DimmingButton : UIButton
@end

%hook DimmingButton
-(void)setFrame:(CGRect)frame{
	CGRect shifted = frame;
	shifted.origin.x = self.superview.frame.size.width - shifted.size.width;
	%orig(shifted);
}
%end