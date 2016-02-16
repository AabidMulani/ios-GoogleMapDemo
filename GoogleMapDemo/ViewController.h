//
//  ViewController.h
//  GoogleMapDemo
//
//  Created by Magneto on 6/29/14.
//  Copyright (c) 2014 Magneto. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GoogleMaps/GoogleMaps.h>
@interface ViewController : UIViewController
{
    GMSMapView *mapView;
    CLLocationManager *locationManager;
}
@end
