//
//  HiddenNavigationBarViewController.m
//  XHTransformNavigationController
//
//  Created by 曾 宪华 on 13-12-2.
//  Copyright (c) 2013年 曾宪华 开发团队(http://iyilunba.com ) 本人QQ:543413507. All rights reserved.
//

#import "HiddenNavigationBarViewController.h"

@interface HiddenNavigationBarViewController ()

@end

@implementation HiddenNavigationBarViewController

#pragma mark - handle

- (void)showAndHiddenHandle:(UIButton *)sender {
    sender.selected = !sender.selected;
    self.navigationController.navigationBarHidden = sender.selected;
    if (sender.selected) {
        [sender setTitle:NSLocalizedString(@"显示", @"") forState:UIControlStateNormal];
    } else {
        [sender setTitle:NSLocalizedString(@"隐藏", @"") forState:UIControlStateNormal];
    }
}

#pragma mark - left cycle init

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = YES;
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    self.navigationController.navigationBarHidden = NO;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"隐藏和显示", @"");
    self.view.backgroundColor = [UIColor colorWithRed:1.000 green:0.603 blue:0.417 alpha:1.000];
    
    UIButton *showNavigationBarButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 80, 35)];
    showNavigationBarButton.backgroundColor = [UIColor colorWithRed:0.243 green:0.230 blue:1.000 alpha:1.000];
    [showNavigationBarButton setTitle:NSLocalizedString(@"显示", @"") forState:UIControlStateNormal];
    showNavigationBarButton.selected = YES;
    [showNavigationBarButton addTarget:self action:@selector(showAndHiddenHandle:) forControlEvents:UIControlEventTouchUpInside];
    showNavigationBarButton.center = self.view.center;
    [self.view addSubview:showNavigationBarButton];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
