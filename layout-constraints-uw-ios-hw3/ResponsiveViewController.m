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
    
    NSDictionary *wDataDict = temp[0];
    
    NSString *city = wDataDict[@"City"];
    
    NSLog(@"%@", city);

    
}


@end
