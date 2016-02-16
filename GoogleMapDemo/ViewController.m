//
//  ViewController.m
//  GoogleMapDemo
//
//  Created by Magneto on 6/29/14.
//  Copyright (c) 2014 Magneto. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    locationManager=[[CLLocationManager alloc]init];
    [locationManager startUpdatingLocation];
    
    GMSCameraPosition *position=[GMSCameraPosition cameraWithLatitude:locationManager.location.coordinate.latitude longitude:locationManager.location.coordinate.longitude zoom:10];
    mapView=[GMSMapView mapWithFrame:CGRectMake(0, 0, 320, 480) camera:position];
    [mapView setMyLocationEnabled:YES];
    mapView.settings.tiltGestures=YES;
    [self.view addSubview:mapView];
    
    CLLocationCoordinate2D coordinate=CLLocationCoordinate2DMake(18.507798, 73.564);
    
    GMSMarker *marker=[[GMSMarker alloc]init];
    marker.position=coordinate;
    marker.title=@"Aabid";
    marker.snippet=@"Arif";
    marker.map=mapView;

}



@end
