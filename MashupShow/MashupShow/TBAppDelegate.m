//
//  TBAppDelegate.m
//  MashupShow
//
//  Created by cenwenchu on 12-5-29.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "TBAppDelegate.h"

@implementation TBAppDelegate

@synthesize window = _window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    WebView *wv = [[WebView alloc] init];
    
    NSURL *url = [[NSURL alloc] initWithString:@"open.taobao.com"];
    
    NSURLRequest *req = [[NSURLRequest alloc] initWithURL:url];
    
    wv.
}

@end
