//
//  XXMTarget.m
//  MTMine
//
//  Created by Eleven on 2020/8/26.
//

#import "Target_Mine.h"

#import "MTMineRootVC.h"

@implementation Target_Mine

- (UIViewController *)Action_getRootVC:(NSDictionary *)params {
    MTMineRootVC *vc = [[MTMineRootVC alloc] init];
    return vc;
}

@end
