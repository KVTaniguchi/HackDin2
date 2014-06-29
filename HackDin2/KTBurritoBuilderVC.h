//
//  KTBurritoBuilderVC.h
//  HackDin2
//
//  Created by Kevin Taniguchi on 6/28/14.
//  Copyright (c) 2014 Taniguchi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SPUserResizableView.h"

@interface KTBurritoBuilderVC : UIViewController <SPUserResizableViewDelegate>
@property (strong, nonatomic) IBOutlet UIView *burritoBackGround;
@property (strong, nonatomic) IBOutlet UIImageView *avocadoImage;
@property (strong, nonatomic) IBOutlet UIImageView *beansImage;
@property (strong, nonatomic) IBOutlet UIImageView *riceImage;
@property (strong, nonatomic) IBOutlet UIImageView *beefImage;
@property (strong, nonatomic) NSNumber *meatValue;
@property (strong, nonatomic) NSNumber *avocadoValue;
@property (strong, nonatomic) NSNumber *beansValue;
@property (strong, nonatomic) NSNumber *beefValue;
@property (strong, nonatomic) IBOutlet UILabel *pointsLabel;
@property (strong, nonatomic) NSNumber *riceValue;

@property (strong, nonatomic) IBOutlet UIImageView *one;
@property (strong, nonatomic) IBOutlet UIImageView *two;
@property (strong, nonatomic) IBOutlet UIImageView *three;
@property (strong, nonatomic) IBOutlet UIImageView *four;
@property (strong, nonatomic) IBOutlet UIImageView *five;
@property (strong, nonatomic) IBOutlet UIImageView *six;
@property (strong, nonatomic) IBOutlet UIImageView *seven;
@property (strong, nonatomic) IBOutlet UIImageView *eight;
@property (strong, nonatomic) IBOutlet UIImageView *nine;
@property (strong, nonatomic) IBOutlet UIImageView *ten;
@property (strong, nonatomic) IBOutlet UIImageView *eleven;
@property (strong, nonatomic) IBOutlet UIImageView *twelve;
@property (strong, nonatomic) IBOutlet UIImageView *thirteen;
@property (strong, nonatomic) IBOutlet UIImageView *fourteen;
@property (strong, nonatomic) IBOutlet UIImageView *fifteen;
@property (strong, nonatomic) IBOutlet UIImageView *sixteen;




@end
