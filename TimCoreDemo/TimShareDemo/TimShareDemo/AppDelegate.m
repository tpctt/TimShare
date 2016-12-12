//
//  AppDelegate.m
//  TimShareDemo
//
//  Created by tim on 16/11/9.
//  Copyright © 2016年 tim. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
-(void)dealloc{}
+(void)load
{
    [super load];
    
    {
        [TimShareConfigManager sharedInstance].shareAppKey = @"29b9b7806030";
        [[TimShareConfigManager sharedInstance] setPlaform:JiaSocialPlatConfigType_Sina appKey:@"2344109907" appSecret:@"978d37143225b9d679643b85aadb73f2" redirectURL:@"https://api.weibo.com/oauth2/default.html"];
        
        [[TimShareConfigManager sharedInstance] setPlaform:JiaSocialPlatConfigType_Wechat appKey:@"wx23c71c336f2c189e" appSecret:@"ca05dba4a0cfdd8f84669ec77ebfefa7" redirectURL:nil];
        [[TimShareConfigManager sharedInstance] setPlaform:JiaSocialPlatConfigType_Tencent appKey:@"1102368176" appSecret:@"zpN6jztX2egcAOSC" redirectURL:nil];
        
        
    }
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    [super application:application didFinishLaunchingWithOptions:launchOptions];
    
//    [self initSharedSDK];
    
    return YES;
    
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
