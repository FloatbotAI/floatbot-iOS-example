//
//  AppDelegate.m
//  floatbot-iOS-example
//
//  Created by Jhanvi on 11/07/18.
//  Copyright © 2018 Jhanvi. All rights reserved.
//

#import "AppDelegate.h"
#import "startChatViewController.h"
#import <floatbot/floatbot.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    startChatViewController *vc = [[startChatViewController alloc] initWithNibName:@"startChatViewController" bundle:nil];
    self.window.rootViewController = vc;
    [self.window makeKeyAndVisible];
    
    [self confiureFloatbot];
    return YES;
}

- (void)confiureFloatbot
{
    [floatbotManager appLaunched];
    [[floatbotManager sharedManager] setFLB_BOT_ID:@"5aa67cdd42d4e2023c65e8da"];
    [[floatbotManager sharedManager] setFLB_KEY:@"5aa67cdd42d4e2023c65e8da"];
    [[floatbotManager sharedManager] setBOT_NAME:@"Floatbot"];
    [[floatbotManager sharedManager] setShowSessionList:TRUE];
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
