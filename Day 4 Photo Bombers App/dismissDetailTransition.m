//
//  dismissDetailTransition.m
//  Day 4 Photo Bombers App
//
//  Created by Sukhrat on 18.06.15.
//  Copyright (c) 2015 Sukhrat. All rights reserved.
//

#import "dismissDetailTransition.h"

@implementation dismissDetailTransition

-(NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext {
    return 0.3;
}

-(void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext {
    UIViewController *detailVC = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    [UIView animateWithDuration:0.3 animations:^{
        detailVC.view.alpha = 0.0;
        
    } completion:^(BOOL finished) {
        [detailVC.view removeFromSuperview];
        [transitionContext completeTransition:YES];
    }]
}

@end
