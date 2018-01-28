//
//  PractitionerViewController.m
//  Five Star Care
//
//  Created by Leo Yoon on 2018-01-28.
//  Copyright © 2018 FSC. All rights reserved.
//

#import "PractitionerViewController.h"
#import "AppointmentViewController.h"

@interface PractitionerViewController (private)

- (void)setupStyling;
- (void)setupImage;

@end

@implementation PractitionerViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  [self setupStyling];
  [self setupImage];
  self.navigationItem.title = self.practitionerName;
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
  if ([segue.identifier isEqualToString:@"practitionerToAppointmentsSegue"]) {
    AppointmentViewController *controller = (AppointmentViewController *)segue.destinationViewController;
    controller.practitionerName = self.practitionerName;
  }
}

#pragma mark - Private methods

- (void)setupStyling {
  practitionerProfileImage.layer.cornerRadius = (practitionerProfileImage.bounds.size.height / 2.0f);
  bookAnAppointmentButton.layer.cornerRadius = (bookAnAppointmentButton.bounds.size.height / 2.0f);
}

- (void)setupImage {
  if ([self.practitionerName isEqualToString:@"Dr. Avocado"]) {
    [practitionerProfileImage setImage:[UIImage imageNamed:@"avocadoProfile"]];
  }
  else if ([self.practitionerName isEqualToString:@"Dr. Banana"]) {
    [practitionerProfileImage setImage:[UIImage imageNamed:@"bananaProfile"]];
  }
  else if ([self.practitionerName isEqualToString:@"Dr. Choco"]) {
    [practitionerProfileImage setImage:[UIImage imageNamed:@"chocoProfile"]];
  }
  else if ([self.practitionerName isEqualToString:@"Dr. Ramnarine"]) {
    [practitionerProfileImage setImage:[UIImage imageNamed:@"kristalProfile"]];
  }
}

@end
