//
//  MTMineRootVC.m
//  AFNetworking
//
//  Created by Eleven on 2020/8/27.
//

#import "MTMineRootVC.h"

#import <Masonry/Masonry.h>

@interface MTMineRootVC ()

@property (nonatomic, strong) UILabel *lb;

@end

@implementation MTMineRootVC

#pragma mark - Life Cycle
- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(updateLabel:) name:@"MTN" object:nil];
    
    [self setupUI];
    [self setupData];
}


#pragma mark - UI
- (void)setupUI {
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.lb];
    
    [self.lb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
}


#pragma mark - Data
- (void)setupData {
    
}


#pragma mark - Event Response
- (void)updateLabel:(NSNotification *)notify {
    NSDictionary *data = notify.userInfo;
    
    self.lb.text = data[@"tt"];
}


#pragma mark - Public Methods


#pragma mark - Private Methods


#pragma mark - Overiding Methods


#pragma mark - Delegate


#pragma mark - Request


#pragma mark - Setter


#pragma mark - Getter
- (UILabel *)lb {
    if (!_lb) {
        _lb = [[UILabel alloc] init];
        _lb.font = [UIFont systemFontOfSize:20.f];
        _lb.textAlignment = NSTextAlignmentCenter;
        _lb.textColor = [UIColor blackColor];
        _lb.text = @"###";
    }
    
    return _lb;
}



@end
