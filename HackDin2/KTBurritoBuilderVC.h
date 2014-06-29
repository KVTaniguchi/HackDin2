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
@property (strong, nonatomic) NSNumber *meatValue;
@property (strong, nonatomic) NSNumber *avocadoValue;
@property (strong, nonatomic) NSNumber *beansValue;
@property (strong, nonatomic) NSNumber *riceValue;
@end
