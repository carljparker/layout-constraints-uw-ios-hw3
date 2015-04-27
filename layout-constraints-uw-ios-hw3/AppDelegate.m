//
//  AppDelegate.m
//  layout-constraints-uw-ios-hw3
//
//  Created by Parker, Carl (HBO) on 4/25/15.
//  Copyright (c) 2015 Parker, Carl (HBO). All rights reserved.
//

#import "AppDelegate.h"
#import "ResponsiveViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    ResponsiveViewController *rVC = [[ResponsiveViewController alloc] init];
    
    self.window.rootViewController = rVC;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}


@end
