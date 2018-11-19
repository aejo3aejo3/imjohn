/********* imjohn.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>

@interface imjohn : CDVPlugin {
  // Member variables go here.
}

- (void)showMsg:(CDVInvokedUrlCommand*)command;
@end

@implementation imjohn

- (void)showMsg:(CDVInvokedUrlCommand*)command
{

	 NSString* name = [[command arguments] objectAtIndex:0];
    NSString* msg = [NSString stringWithFormat: @"Im, %@", name];

    CDVPluginResult* result = [CDVPluginResult
                               resultWithStatus:CDVCommandStatus_OK
                               messageAsString:msg];

    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
    // CDVPluginResult* pluginResult = nil;
    // NSString* echo = [command.arguments objectAtIndex:0];

    // if (echo != nil && [echo length] > 0) {
    //     pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
    // } else {
    //     pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    // }

    // [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
