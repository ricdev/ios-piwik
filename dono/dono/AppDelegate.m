//
//  AppDelegate.m
//  dono
//
//  Created by ric on 31/08/2016.
//  Copyright © 2016 rminfo. All rights reserved.
//

#import "AppDelegate.h"
#import "PiwikTracker/PiwikTracker.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

// Piwik
static NSString * const PiwikServerURL = @"http://localhost/path/to/piwik/";
static NSString * const PiwikSiteID = @"2";


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    // Piwik: The website ID is available in Piwik web interface "Settings > Websites"
    [PiwikTracker sharedInstanceWithSiteID:PiwikSiteID baseURL:[NSURL URLWithString:PiwikServerURL]];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.

    // Piwik: Print events to the console
    [PiwikTracker sharedInstance].debug = YES;
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
