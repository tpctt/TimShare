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
        [TimShareConfigManager sharedInstance].shareAppKey = @"198497d4e5fc4";
        [TimShareConfigManager sharedInstance].shareAppSecret = @"e179c48d842051d958823aedaf26de27";
        
        [[TimShareConfigManager sharedInstance] setPlaform:JiaSocialPlatConfigType_Sina appKey:@"868207552" appSecret:@"0557d59017db3b4dd92a1ae7f4c637dd" redirectURL:@"https://api.weibo.com/oauth2/default.html"];
        
        [[TimShareConfigManager sharedInstance] setPlaform:JiaSocialPlatConfigType_Wechat appKey:@"wx9b0b6b8fd7bb4b98" appSecret:@"f2bf596c1feb75d044aff010337692f9" redirectURL:nil];
        [[TimShareConfigManager sharedInstance] setPlaform:JiaSocialPlatConfigType_Tencent appKey:@"1105767421" appSecret:@"dUjqPaJAV9pBWJeZ" redirectURL:nil];
        
        
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
