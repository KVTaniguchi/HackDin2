//
//  KTViewController.m
//  HackDin2
//
//  Created by Kevin Taniguchi on 6/28/14.
//  Copyright (c) 2014 Taniguchi. All rights reserved.
//

#import "KTViewController.h"

@interface KTViewController ()

@end

@implementation KTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.saladButton.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin;
    self.burritoButton.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    self.bowlButton.autoresizingMask = UIViewAutoresizingFlexibleRightMargin;
    [[UIDevice currentDevice]beginGeneratingDeviceOrientationNotifications];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(detectOrientation) name:UIDeviceOrientationDidChangeNotification object:nil];
}

-(void)detectOrientation{
    NSLog(@"did change");
    if ([UIDevice currentDevice].orientation == UIDeviceOrientationLandscapeLeft || [UIDevice currentDevice].orientation == UIDeviceOrientationLandscapeRight) {
        NSLog(@"landscape");
        self.saladButton.frame = CGRectMake(10, 10, 100, 100);
        [self.view setNeedsDisplay];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
