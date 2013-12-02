//
//  UINavigationController+XHNavigationControllerHiddenShowBug.h
//  XHTransformNavigationController
//
//  Created by 曾 宪华 on 13-12-2.
//  Copyright (c) 2013年 曾宪华 开发团队(http://iyilunba.com ) 本人QQ:543413507. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationController (XHNavigationControllerHiddenShowBug)
- (void)pushViewControllerWithNavigationControllerTransition:(UIViewController *)viewController;
- (void)popViewControllerWithNavigationControllerTransition;
@end
