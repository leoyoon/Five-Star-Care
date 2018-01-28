//
//  AppointmentViewController.m
//  Five Star Care
//
//  Created by Leo Yoon on 2018-01-28.
//  Copyright © 2018 FSC. All rights reserved.
//

#import "AppointmentViewController.h"

@interface AppointmentViewController ()

@end

@implementation AppointmentViewController

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

#pragma mark - UIDatePicker methods

- (IBAction)datePickerValueChanged:(id)sender {
  
}

#pragma mark - UIButton methods

- (IBAction)thisOneButtonClicked:(UIButton *)sender {
  UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Appointment Success" message:@"Your appointment has been accepted. An email will be sent shortly." preferredStyle:UIAlertControllerStyleAlert];
  UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
  [alertController addAction:okAction];
  [self presentViewController:alertController animated:YES completion:nil];
}

#pragma mark - Private methods

- (void)setupStyling {
  practitionerProfileImage.layer.cornerRadius = (practitionerProfileImage.bounds.size.height / 2.0f);
  thisOneButton.layer.cornerRadius = (thisOneButton.bounds.size.height / 2.0f);
  
  appointmentCell.layer.shadowRadius = 1.5f;
  appointmentCell.layer.shadowColor   = [UIColor colorWithRed:192.0f/255.0f green:192.0f/255.0f blue:192.0f/255.0f alpha:1.0f].CGColor;
  appointmentCell.layer.shadowOffset  = CGSizeMake(0.0f, 2.0f);
  appointmentCell.layer.shadowOpacity = 0.7f;
  appointmentCell.layer.masksToBounds = NO;
  
  UIEdgeInsets shadowInsets     = UIEdgeInsetsMake(0, 0, -1.5f, 0);
  UIBezierPath *shadowPath      = [UIBezierPath bezierPathWithRect:UIEdgeInsetsInsetRect(appointmentCell.bounds, shadowInsets)];
  appointmentCell.layer.shadowPath    = shadowPath.CGPath;
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
