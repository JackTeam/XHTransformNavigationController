//
//  RootViewController.m
//  XHTransformNavigationController
//
//  Created by 曾 宪华 on 13-12-2.
//  Copyright (c) 2013年 嗨，我是曾宪华(@xhzengAIB)，曾加入YY Inc.担任高级移动开发工程师，拍立秀App联合创始人，热衷于简洁、而富有理性的事物 QQ:543413507 主页:http://zengxianhua.com All rights reserved.
//

#import "RootViewController.h"
#import "UINavigationController+XHNavigationControllerHiddenShowBug.h"
#import "HiddenNavigationBarViewController.h"

@interface RootViewController ()
@end

@implementation RootViewController

#pragma mark - Handle

- (void)badPushBarButtonItemHandle {
    HiddenNavigationBarViewController *hiddenNavigationBarViewController = [[HiddenNavigationBarViewController alloc] init];
    [self.navigationController pushViewController:hiddenNavigationBarViewController animated:YES];
}

- (void)likePushBarButtonItemHandle {
    HiddenNavigationBarViewController *hiddenNavigationBarViewController = [[HiddenNavigationBarViewController alloc] init];
    [self.navigationController pushViewControllerWithNavigationControllerTransition:hiddenNavigationBarViewController];
}

#pragma mark - Left cycle init

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.title = NSLocalizedString(@"主页", @"");
    self.view.backgroundColor = [UIColor colorWithRed:1.000 green:0.603 blue:0.417 alpha:1.000];
    
    UIBarButtonItem *badPushBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:NSLocalizedString(@"糟糕的", @"") style:UIBarButtonItemStylePlain target:self action:@selector(badPushBarButtonItemHandle)];
    
    UIBarButtonItem *likePushBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:NSLocalizedString(@"喜欢的", @"") style:UIBarButtonItemStylePlain target:self action:@selector(likePushBarButtonItemHandle)];
    self.navigationItem.rightBarButtonItems = [NSArray arrayWithObjects:badPushBarButtonItem, likePushBarButtonItem, nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
