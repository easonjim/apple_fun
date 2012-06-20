//
//  TopAuth.m
//  TopIOSSdk
//
//  Created by cenwenchu on 12-6-20.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "TopAuth.h"

@implementation TopAuth

@synthesize access_token;
@synthesize refresh_token;
@synthesize mobile_token;
@synthesize token_expire_time;
@synthesize refresh_expire_time;
@synthesize create_time;

@synthesize token_expire_time_r1;
@synthesize token_expire_time_r2;
@synthesize token_expire_time_w1;
@synthesize token_expire_time_w2;

@synthesize user_id;
@synthesize user_name;

-(id)initTopAuthFromString:(NSString*) authString;
{
    if(self = [super init])
    {
        if (authString)
        {
            NSArray * chunks = [authString componentsSeparatedByString:@"&"];
            
            create_time = [NSDate date];
            
            for(NSString* item in chunks)
            {
                if ([item hasPrefix:@"access_token="])
                {
                    [self setAccess_token:[item substringFromIndex:[@"access_token=" length]]];
                    continue;
                }
                
                if ([item hasPrefix:@"refresh_token="])
                {
                    [self setRefresh_token:[item substringFromIndex:[@"refresh_token=" length]]];
                    continue;
                }
                
                if ([item hasPrefix:@"mobile_token="])
                {
                    [self setMobile_token:[item substringFromIndex:[@"mobile_token=" length]]];
                    continue;
                }
                
                if ([item hasPrefix:@"re_expires_in="])
                {
                    [self setRefresh_expire_time: [NSNumber numberWithInt: 
                                                   [[item substringFromIndex:[@"re_expires_in=" length]] intValue]]];
                    continue;
                }
                
                if ([item hasPrefix:@"expires_in="])
                {
                    [self setToken_expire_time: [NSNumber numberWithInt: 
                                                   [[item substringFromIndex:[@"expires_in=" length]] intValue]]];
                    continue;
                }
                
                
                if ([item hasPrefix:@"r1_expires_in="])
                {
                    [self setToken_expire_time_r1: [NSNumber numberWithInt: 
                                                    [[item substringFromIndex:[@"r1_expires_in=" length]] intValue]]];
                    continue;
                }
                
                if ([item hasPrefix:@"r2_expires_in="])
                {
                    [self setToken_expire_time_r2: [NSNumber numberWithInt: 
                                                    [[item substringFromIndex:[@"r2_expires_in=" length]] intValue]]];
                    continue;
                }
                
                if ([item hasPrefix:@"w1_expires_in="])
                {
                    [self setToken_expire_time_w1: [NSNumber numberWithInt: 
                                                    [[item substringFromIndex:[@"w1_expires_in=" length]] intValue]]];
                    continue;
                }
                
                if ([item hasPrefix:@"w2_expires_in="])
                {
                    [self setToken_expire_time_w2: [NSNumber numberWithInt: 
                                                    [[item substringFromIndex:[@"w2_expires_in=" length]] intValue]]];
                    continue;
                }
                
                if ([item hasPrefix:@"taobao_user_id="])
                {
                    [self setUser_id: [item substringFromIndex:[@"taobao_user_id=" length]]];
                    continue;
                }
                
                if ([item hasPrefix:@"taobao_user_nick="])
                {
                    [self setUser_name: [item substringFromIndex:[@"taobao_user_nick=" length]]];
                    continue;
                }
                
            }
        }
    }
    
    return self;
    
}

-(void)dealloc
{
    [self setAccess_token:nil];
    [self setRefresh_token:nil];
    [self setMobile_token:nil];
    [self setToken_expire_time:nil];
    [self setRefresh_expire_time:nil];
    [self setCreate_time:nil];
}

@end