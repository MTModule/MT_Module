//
//  XXTabBarController.m
//  Demo_组件化
//
//  Created by Eleven on 2020/8/26.
//  Copyright © 2020 Eleven. All rights reserved.
//

#import "XXTabBarController.h"
#import <Category_Home/CTMediator+Home.h>
#import <Category_Mine/CTMediator+Mine.h>

#import "ViewController.h"

@interface XXTabBarController ()

@end

@implementation XXTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupTabBar];
}

- (void)setupTabBar {
    
    UIViewController *homeVC = [[CTMediator sharedInstance] CTMediator_viewControllerForHome];
    UINavigationController *homeNav = [self setupNav:homeVC title:@"Home" image:nil tag:0];
    
    UIViewController *mineVC = [[CTMediator sharedInstance] CTMediator_viewControllerForMine];
    UINavigationController *mineNav = [self setupNav:mineVC title:@"Mine" image:nil tag:1];
    
    self.viewControllers = @[homeNav, mineNav];
}

- (UINavigationController *)setupNav:(UIViewController *)vc title:(NSString * _Nullable )title image:(UIImage * _Nullable )image tag:(NSUInteger)tag {
    vc.navigationItem.title = title;
    UITabBarItem *item = [[UITabBarItem alloc] initWithTitle:title image:image tag:tag];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    nav.tabBarItem = item;
    
    return nav;
}

@end
