#line 1 "Tweak.x"

#include <UIKit/UIKit.h>


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class SBStatusBarManager; 
static void (*_logos_orig$_ungrouped$SBStatusBarManager$handleStatusBarTapWithEvent$)(_LOGOS_SELF_TYPE_NORMAL SBStatusBarManager* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$SBStatusBarManager$handleStatusBarTapWithEvent$(_LOGOS_SELF_TYPE_NORMAL SBStatusBarManager* _LOGOS_SELF_CONST, SEL, id); 

#line 4 "Tweak.x"


static void _logos_method$_ungrouped$SBStatusBarManager$handleStatusBarTapWithEvent$(_LOGOS_SELF_TYPE_NORMAL SBStatusBarManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){

UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Hello Affan" message:@"This is my First Tweak" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
[alert show];

_logos_orig$_ungrouped$SBStatusBarManager$handleStatusBarTapWithEvent$(self, _cmd, arg1);

}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBStatusBarManager = objc_getClass("SBStatusBarManager"); { MSHookMessageEx(_logos_class$_ungrouped$SBStatusBarManager, @selector(handleStatusBarTapWithEvent:), (IMP)&_logos_method$_ungrouped$SBStatusBarManager$handleStatusBarTapWithEvent$, (IMP*)&_logos_orig$_ungrouped$SBStatusBarManager$handleStatusBarTapWithEvent$);}} }
#line 16 "Tweak.x"
