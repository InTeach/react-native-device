#import "DeviceUtil.h"
#import <React/RCTBridge.h>
#import <React/RCTUtils.h>

@implementation DeviceUtil

RCT_EXPORT_MODULE();

@synthesize bridge = _bridge;

- (NSDictionary *)constantsToExport {
    NSString *model = [[UIDevice currentDevice] model];
    NSString *name = [[UIDevice currentDevice] name];
    NSString *systemName = [[UIDevice currentDevice] systemName];
    NSString *systemVersion = [[UIDevice currentDevice] systemVersion];

    return @{
             @"model" : (model),
             @"name" : (name),
             @"systemName" : (systemName),
             @"systemVersion" : (systemVersion)
             };
}

@end
