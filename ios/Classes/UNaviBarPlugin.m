#import "UNaviBarPlugin.h"
#if __has_include(<u_navi_bar/u_navi_bar-Swift.h>)
#import <u_navi_bar/u_navi_bar-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "u_navi_bar-Swift.h"
#endif

@implementation UNaviBarPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftUNaviBarPlugin registerWithRegistrar:registrar];
}
@end
