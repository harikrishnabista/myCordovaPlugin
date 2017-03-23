#import "HWPHello.h"
#import <TopHackerNews/TopHackerNewsSDK.h>

@implementation HWPHello

- (void)greet:(CDVInvokedUrlCommand*)command
{

    TopHackerNewsSDK *sdk = [[TopHackerNewsSDK alloc] init];
    
    [sdk iniSDK];
    [sdk showHackerNews];
    
    NSString* name = [[command arguments] objectAtIndex:0];
    NSString* msg = [NSString stringWithFormat: @"Hello, %@", name];

    CDVPluginResult* result = [CDVPluginResult
                               resultWithStatus:CDVCommandStatus_OK
                               messageAsString:msg];

    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

@end
