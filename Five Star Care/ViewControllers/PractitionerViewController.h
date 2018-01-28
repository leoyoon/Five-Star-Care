//
//  PractitionerViewController.h
//  Five Star Care
//
//  Created by Leo Yoon on 2018-01-28.
//  Copyright © 2018 FSC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PractitionerViewController : UIViewController {
  
  IBOutlet UIImageView *practitionerProfileImage;
  IBOutlet UIButton *bookAnAppointmentButton;
}

@property (assign, nonatomic) NSString *practitionerName;


@end
