//
//  AppDelegate.m
//  WilddogImg
//
//  Created by IMacLi on 15/11/19.
//  Copyright © 2015年 liwuyang. All rights reserved.
//

#import "AppDelegate.h"
#import "TestViewController.h"
#import "AddMesViewController.h"
#import <Wilddog/Wilddog.h>
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    TestViewController *testViewController = [[TestViewController alloc] initWithNibName:@"TestViewController" bundle:nil];
    testViewController.title=@"展示列表";
    UINavigationController *navTest = [[UINavigationController alloc] initWithRootViewController:testViewController];
    
    AddMesViewController *addMesViewController = [[AddMesViewController alloc] initWithNibName:@"AddMesViewController" bundle:nil];
    addMesViewController.title = @"添加信息";
    UINavigationController *navAddMes = [[UINavigationController alloc] initWithRootViewController:addMesViewController];
    
    
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    tabBarController.viewControllers = [[NSArray alloc] initWithObjects:navTest, navAddMes,nil];

    
    self.window.rootViewController = tabBarController;
    
    

    
    [self.window makeKeyAndVisible];
    
    
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
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
