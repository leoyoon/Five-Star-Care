//
//  DashboardViewController.m
//  Five Star Care
//
//  Created by Leo Yoon on 2018-01-27.
//  Copyright © 2018 FSC. All rights reserved.
//

#import "DashboardViewController.h"

@interface DashboardViewController (private)

- (void)setupStyles;

@end

@implementation DashboardViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view.
  [self setupStyles];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

#pragma mark - Private Methods

- (void)setupStyles {
  for (UIView *view in self.squareViewCollection) {
    view.layer.shadowRadius = 1.0f;
    view.layer.shadowColor   = [UIColor colorWithRed:192.0f/255.0f green:192.0f/255.0f blue:192.0f/255.0f alpha:1.0f].CGColor;
    view.layer.shadowOffset  = CGSizeMake(1.0f, 2.0f);
    view.layer.shadowOpacity = 0.7f;
    view.layer.masksToBounds = NO;
    
    UIEdgeInsets shadowInsets     = UIEdgeInsetsMake(0, 0, -1.5f, 0);
    UIBezierPath *shadowPath      = [UIBezierPath bezierPathWithRect:UIEdgeInsetsInsetRect(view.bounds, shadowInsets)];
    view.layer.shadowPath    = shadowPath.CGPath;
  }
  
  for (UIView *view in self.largeViewCollection) {
    view.layer.shadowRadius = 1.5f;
    view.layer.shadowColor   = [UIColor colorWithRed:192.0f/255.0f green:192.0f/255.0f blue:192.0f/255.0f alpha:1.0f].CGColor;
    view.layer.shadowOffset  = CGSizeMake(0.0f, 2.0f);
    view.layer.shadowOpacity = 0.7f;
    view.layer.masksToBounds = NO;
    
    UIEdgeInsets shadowInsets     = UIEdgeInsetsMake(0, 0, -1.5f, 0);
    UIBezierPath *shadowPath      = [UIBezierPath bezierPathWithRect:UIEdgeInsetsInsetRect(view.bounds, shadowInsets)];
    view.layer.shadowPath    = shadowPath.CGPath;
  }
}

@end

