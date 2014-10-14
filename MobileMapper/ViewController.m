//
//  ViewController.m
//  MobileMapper
//
//  Created by Taylor Wright-Sanson on 10/14/14.
//  Copyright (c) 2014 Taylor Wright-Sanson. All rights reserved.
//

#import "ViewController.h"
#import <MapKit/MapKit.h>

@interface ViewController ()

@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property MKPointAnnotation *mobileMakersAnnotation;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    CLLocationCoordinate2D coord;
    coord.latitude = 41.89373984;
    coord.longitude = -87.63532979;

    self.mobileMakersAnnotation = [[MKPointAnnotation alloc] init];
    self.mobileMakersAnnotation.coordinate = coord;
    self.mobileMakersAnnotation.title = @"Mobile Makers";
    [self.mapView addAnnotation:self.mobileMakersAnnotation];

}



@end
