//
//  SearchViewController.h
//  Five Star Care
//
//  Created by Leo Yoon on 2018-01-27.
//  Copyright © 2018 FSC. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GMSPlace;

@interface SearchViewController : UIViewController {

  GMSPlace *searchedPlace;
  
  // Add a pair of UILabels in Interface Builder, and connect the outlets to these variables.
  IBOutlet UILabel *nameLabel;
  IBOutlet UILabel *addressLabel;
  
}

@end
