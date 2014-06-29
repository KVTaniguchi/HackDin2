//
//  KTBurrIngreVC.h
//  HackDin2
//
//  Created by Kevin Taniguchi on 6/28/14.
//  Copyright (c) 2014 Taniguchi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KTBurrIngreVC : UIViewController
@property (strong, nonatomic) IBOutlet UIButton *whiteRiceSelectButton;
- (IBAction)whiteRiceSelectPressed:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *pintoBeanSelectButton;
- (IBAction)pintoBeanSelectPress:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *blackBeanSelectButton;
- (IBAction)blackBeanSelectPress:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *veggieButton;
- (IBAction)veggieButtonPressed:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *cheeseButton;
- (IBAction)cheeseButtonPress:(id)sender;

@end
