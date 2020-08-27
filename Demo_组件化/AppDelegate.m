//
//  AppDelegate.m
//  Demo_组件化
//
//  Created by Eleven on 2020/8/25.
//  Copyright © 2020 Eleven. All rights reserved.
//

#import "AppDelegate.h"

#import "XXTabBarController.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    XXTabBarController *tab = [[XXTabBarController alloc] init];
    self.window.rootViewController = tab;
    [self.window makeKeyAndVisible];
    
    return YES;
}



@end
