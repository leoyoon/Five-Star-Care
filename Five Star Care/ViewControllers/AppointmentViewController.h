//
//  AppointmentViewController.h
//  Five Star Care
//
//  Created by Leo Yoon on 2018-01-28.
//  Copyright © 2018 FSC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppointmentViewController : UIViewController {
  
  IBOutlet UIView      *appointmentCell;
  IBOutlet UIButton    *thisOneButton;
  IBOutlet UIImageView  *practitionerProfileImage;
  IBOutlet UIDatePicker *datePicker;
}

@property (assign, nonatomic) NSString *practitionerName;

@end
