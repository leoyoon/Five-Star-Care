//
//  MapViewController.m
//  Five Star Care
//
//  Created by Leo Yoon on 2018-01-27.
//  Copyright © 2018 FSC. All rights reserved.
//

@import GoogleMaps;
@import GooglePlacePicker;

#import "MapViewController.h"
#import "PractitionerTableViewController.h"

@interface MapViewController ()

@end

@implementation MapViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  self.navigationItem.title = @"Map";
}

- (void)loadView {
  // Create a GMSCameraPosition that tells the map to display the
  // coordinate -33.86,151.20 at zoom level 6.
  GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:-33.86
                                                          longitude:151.20
                                                               zoom:6];
  GMSMapView *mapView = [GMSMapView mapWithFrame:CGRectZero camera:camera];
  mapView.myLocationEnabled = YES;
  mapView.delegate = self;
  self.view = mapView;
  
  // Creates a marker in the center of the map.
  GMSMarker *marker = [[GMSMarker alloc] init];
  marker.position = CLLocationCoordinate2DMake(-33.86, 151.20);
  marker.title = @"Sydney";
  marker.snippet = @"Australia";
  marker.map = mapView;
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//  if ([segue.identifier isEqualToString:@"mapToPractitionerTableSegue"]) {
//    PractitionerTableViewController *controller = (PractitionerTableViewController *)segue.destinationViewController;
//
//  }
}

#pragma mark - GMSMapViewDelegate Methods

- (BOOL)mapView:(GMSMapView *)mapView didTapMarker:(GMSMarker *)marker {
  [self performSegueWithIdentifier:@"mapToPractitionerTableSegue" sender:self];
  return true;
}

@end
