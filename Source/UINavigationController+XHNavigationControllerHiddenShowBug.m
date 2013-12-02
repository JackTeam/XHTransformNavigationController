//
//  UINavigationController+XHNavigationControllerHiddenShowBug.m
//  XHTransformNavigationController
//
//  Created by 曾 宪华 on 13-12-2.
//  Copyright (c) 2013年 曾宪华 开发团队(http://iyilunba.com ) 本人QQ:543413507. All rights reserved.
//

#import "UINavigationController+XHNavigationControllerHiddenShowBug.h"

static CALayer *kXHCurrentLayer = nil;
static CALayer *kXHNextLayer = nil;
static NSTimeInterval const kTransitionDuration = .3f;

@interface XHNavigationControllerTransitionAnimiationDelegate : NSObject
- (void)animationDidStop:(CAAnimation *)animation finished:(BOOL)flag;
+ (XHNavigationControllerTransitionAnimiationDelegate *)sharedDelegate;
@end

@implementation XHNavigationControllerTransitionAnimiationDelegate

- (void)animationDidStop:(CAAnimation *)animation finished:(BOOL)flag
{
    [kXHCurrentLayer removeFromSuperlayer];
    [kXHNextLayer removeFromSuperlayer];
}

+ (XHNavigationControllerTransitionAnimiationDelegate *)sharedDelegate
{
    static dispatch_once_t onceToken;
    __strong static id _sharedDelegate = nil;
    dispatch_once(&onceToken, ^{
        _sharedDelegate = [[self alloc] init];
    });
    return _sharedDelegate;
}

@end

@implementation UINavigationController (XHNavigationControllerHiddenShowBug)
- (void)pushViewControllerWithNavigationControllerTransition:(UIViewController *)viewController
{
    kXHCurrentLayer = [self _layerSnapshotWithTransform:CATransform3DIdentity];
    
    [self pushViewController:viewController animated:NO];
    
    kXHNextLayer = [self _layerSnapshotWithTransform:CATransform3DIdentity];
    kXHNextLayer.frame = (CGRect){{CGRectGetWidth(self.view.bounds), CGRectGetMinY(self.view.bounds)}, self.view.bounds.size};
    
    [self.view.layer addSublayer:kXHCurrentLayer];
    [self.view.layer addSublayer:kXHNextLayer];
    
    [CATransaction flush];
    
    [kXHCurrentLayer addAnimation:[self _animationWithTranslation:-CGRectGetWidth(self.view.bounds)] forKey:nil];
    [kXHNextLayer addAnimation:[self _animationWithTranslation:-CGRectGetWidth(self.view.bounds)] forKey:nil];
}

- (void)popViewControllerWithNavigationControllerTransition
{
    kXHCurrentLayer = [self _layerSnapshotWithTransform:CATransform3DIdentity];
    
    [self popViewControllerAnimated:NO];
    
    kXHNextLayer = [self _layerSnapshotWithTransform:CATransform3DIdentity];
    kXHNextLayer.frame = (CGRect){{-CGRectGetWidth(self.view.bounds), CGRectGetMinY(self.view.bounds)}, self.view.bounds.size};
    
    [self.view.layer addSublayer:kXHCurrentLayer];
    [self.view.layer addSublayer:kXHNextLayer];
    
    [CATransaction flush];
    
    [kXHCurrentLayer addAnimation:[self _animationWithTranslation:CGRectGetWidth(self.view.bounds)] forKey:nil];
    [kXHNextLayer addAnimation:[self _animationWithTranslation:CGRectGetWidth(self.view.bounds)] forKey:nil];
}

- (CABasicAnimation *)_animationWithTranslation:(CGFloat)translation
{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform"];
    animation.toValue = [NSValue valueWithCATransform3D:CATransform3DTranslate(CATransform3DIdentity, translation, 0.f, 0.f)];
    animation.duration = kTransitionDuration;
    animation.delegate = [XHNavigationControllerTransitionAnimiationDelegate sharedDelegate];
    animation.removedOnCompletion = NO;
    animation.fillMode = kCAFillModeForwards;
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    return animation;
}

- (CALayer *)_layerSnapshotWithTransform:(CATransform3D)transform
{
	if (UIGraphicsBeginImageContextWithOptions){
        UIGraphicsBeginImageContextWithOptions(self.view.bounds.size, NO, [UIScreen mainScreen].scale);
    }
	else {
        UIGraphicsBeginImageContext(self.view.bounds.size);
    }
	
	[self.view.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *snapshot = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();
	
    CALayer *snapshotLayer = [CALayer layer];
	snapshotLayer.transform = transform;
    snapshotLayer.anchorPoint = CGPointMake(1.f, 1.f);
    snapshotLayer.frame = self.view.bounds;
	snapshotLayer.contents = (id)snapshot.CGImage;
    return snapshotLayer;
}

@end

