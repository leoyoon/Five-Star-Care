//
//  SearchViewController.m
//  Five Star Care
//
//  Created by Leo Yoon on 2018-01-27.
//  Copyright © 2018 FSC. All rights reserved.
//

@import GoogleMaps;
@import GooglePlaces;

#import "SearchViewController.h"
#import "MapViewController.h"

@interface SearchViewController (private)

- (void)getCurrentPlace;

@end

@implementation SearchViewController {
  GMSPlacesClient *_placesClient;
  CLLocationManager *_locationManager;
}

- (void)viewDidLoad {
  [super viewDidLoad];
  _placesClient = [GMSPlacesClient sharedClient];
  _locationManager = [[CLLocationManager alloc] init];
  [_locationManager requestWhenInUseAuthorization];

  [self getCurrentPlace];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
  if ([segue.identifier isEqualToString:@"searchToMapSegue"]) {
    MapViewController *controller = (MapViewController *)segue.destinationViewController;
    controller.searchedPlace = self->searchedPlace;
  }
}

#pragma mark - Private Methods

- (void)getCurrentPlace {
  [_placesClient currentPlaceWithCallback:^(GMSPlaceLikelihoodList *placeLikelihoodList, NSError *error){
    if (error != nil) {
      NSLog(@"Pick Place error: %@", [error localizedDescription]);
      return;
    }
    
    self->nameLabel.text = @"No current place";
    self->addressLabel.text = @"";
    
    if (placeLikelihoodList != nil) {
      self->searchedPlace = [[[placeLikelihoodList likelihoods] firstObject] place];
      if (self->searchedPlace != nil) {
        self->nameLabel.text = self->searchedPlace.name;
        self->addressLabel.text = [[self->searchedPlace.formattedAddress componentsSeparatedByString:@", "]
                                  componentsJoinedByString:@"\n"];
      }
    }
  }];
}

@end
