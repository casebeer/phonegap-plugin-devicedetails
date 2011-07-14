
#import "DeviceDetails.h"

@implementation DeviceDetails

- (void) isMultitaskingSupported:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options
{
	NSString* callbackId = [arguments objectAtIndex:0];

	// http://rndm-snippets.blogspot.com/2011/05/objective-cxcode-4-check-at-runtime.html
	UIDevice* device = [UIDevice currentDevice];
	BOOL multitaskingSupported = [device respondsToSelector: @selector(isMultitaskingSupported)] &&
									[device isMultitaskingSupported];

	PluginResult* result = [PluginResult resultWithStatus: PGCommandStatus_OK messageAsInt: multitaskingSupported];
	[self writeJavascript: [result toSuccessCallbackString: callbackId]];
}

@end

