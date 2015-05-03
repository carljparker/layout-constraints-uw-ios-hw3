//
//  ResponsiveViewController.m
//  layout-constraints-uw-ios-hw3
//
//  Created by Parker, Carl (HBO) on 4/25/15.
//  Copyright (c) 2015 Parker, Carl (HBO). All rights reserved.
//

#import "ResponsiveViewController.h"

@interface ResponsiveViewController ()

@end


@implementation ResponsiveViewController


- (void)viewDidLoad {

    [super viewDidLoad];
    
    NSError *errorDesc = nil;
    NSPropertyListFormat format;
    NSString *plistPath;
    NSString *rootPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    
    plistPath = [rootPath stringByAppendingPathComponent:@"WeatherData.plist"];
    if (![[NSFileManager defaultManager] fileExistsAtPath:plistPath]) {
        
        plistPath = [[NSBundle mainBundle] pathForResource:@"WeatherData" ofType:@"plist"];
        
    }
    
    NSData *plistXML = [[NSFileManager defaultManager] contentsAtPath:plistPath];
    
    NSArray *temp = (NSArray *)[NSPropertyListSerialization
                                          propertyListWithData:plistXML
                                          options:NSPropertyListMutableContainersAndLeaves
                                          format:&format
                                          error:&errorDesc];
    if (!temp) {
        
        NSLog(@"Error reading plist: %@, format: %lu", errorDesc, format);
        
    }
    
    //
    // Extract and log the city name
    //
    // We don't display it in the UI;
    // I have hardcoded it there.
    // That is how I interpreted the assignment.
    //
    NSDictionary *wDataDict = temp[0];
    NSString *city = wDataDict[@"City"];
    NSLog(@"%@", city);
    
    //
    // Extract and display the temperatures
    //
    NSArray *temperatures = (NSArray *) wDataDict[@"HourlyForecast"];
    
    self.tempAM08.text = [NSString stringWithFormat:@"%@ F", temperatures[8]];
    self.tempAM09.text = [NSString stringWithFormat:@"%@ F", temperatures[9]];
    self.tempAM10.text = [NSString stringWithFormat:@"%@ F", temperatures[10]];
    
    //
    // Sunrise & Sunset Times
    //
    self.timeSunrise.text = wDataDict[@"Sunrise"];
    self.timeSunset.text = wDataDict[@"Sunset"];
    
    
}


@end
