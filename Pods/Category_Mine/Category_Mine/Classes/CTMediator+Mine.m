//
//  CTMediator+Mine.m
//  Category_Mine
//
//  Created by Eleven on 2020/8/27.
//

#import "CTMediator+Mine.h"

NSString * const kCTMediatorTargetMine = @"Mine";
NSString * const kCTMediatorActionMineRootViewController = @"getRootVC";

@implementation CTMediator (Mine)

- (UIViewController *)CTMediator_viewControllerForMine {
    UIViewController *viewController = [self performTarget:kCTMediatorTargetMine
                                                    action:kCTMediatorActionMineRootViewController
                                                    params:@{@"key" : @"value"}
                                         shouldCacheTarget:NO
                                        ];
    if ([viewController isKindOfClass:[UIViewController class]]) {
        // view controller 交付出去之后，可以由外界选择是push还是present
        return viewController;
    } else {
        // 这里处理异常场景，具体如何处理取决于产品
        return [[UIViewController alloc] init];
    }
}

@end
