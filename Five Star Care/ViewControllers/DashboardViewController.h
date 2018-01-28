//
//  DashboardViewController.h
//  Five Star Care
//
//  Created by Leo Yoon on 2018-01-27.
//  Copyright © 2018 FSC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DashboardViewController : UIViewController

@property IBOutlet UIScrollView *scrollView;
@property IBOutletCollection(UIView) NSArray *largeViewCollection;
@property IBOutletCollection(UIView) NSArray *squareViewCollection;


@end
