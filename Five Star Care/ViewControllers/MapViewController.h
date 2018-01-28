//
//  MapViewController.h
//  Five Star Care
//
//  Created by Leo Yoon on 2018-01-27.
//  Copyright © 2018 FSC. All rights reserved.
//

#import <UIKit/UIKit.h>
@import GoogleMaps;

@class GMSPlace;

@interface MapViewController : UIViewController <GMSMapViewDelegate> {

}

@property (assign, nonatomic) GMSPlace *searchedPlace;

@end

