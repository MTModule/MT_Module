//
//  Target_Home.m
//  MTHome
//
//  Created by Eleven on 2020/8/27.
//

#import "Target_Home.h"
#import "MTHomeRootVC.h"

@implementation Target_Home

- (UIViewController *)Action_rootViewController:(NSDictionary *)params {
    MTHomeRootVC *vc = [[MTHomeRootVC alloc] initWithDict:params];
    return vc;
}

@end
