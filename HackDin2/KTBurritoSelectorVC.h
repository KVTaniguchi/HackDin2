//
//  KTBurritoSelectorVC.h
//  HackDin2
//
//  Created by Kevin Taniguchi on 6/29/14.
//  Copyright (c) 2014 Taniguchi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KTBurritoSelectorVC : UIViewController
@property (strong, nonatomic) IBOutlet UIButton *smallBurritoButton;
- (IBAction)smallPressed:(id)sender;
- (IBAction)mediumPressed:(id)sender;

@end
