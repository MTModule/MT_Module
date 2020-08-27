//
//  CTMediator+Home.m
//  Category_Home
//
//  Created by Eleven on 2020/8/27.
//

#import "CTMediator+Home.h"

NSString * const kCTMediatorTargetHome = @"Home";
NSString * const kCTMediatorActionRootViewController = @"rootViewController";

@implementation CTMediator (Home)

- (UIViewController *)CTMediator_viewControllerForHome {
    UIViewController *viewController = [self performTarget:kCTMediatorTargetHome
                                                    action:kCTMediatorActionRootViewController
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
