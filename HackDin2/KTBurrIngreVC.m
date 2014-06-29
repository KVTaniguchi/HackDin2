//
//  KTBurrIngreVC.m
//  HackDin2
//
//  Created by Kevin Taniguchi on 6/28/14.
//  Copyright (c) 2014 Taniguchi. All rights reserved.
//

#import "KTBurrIngreVC.h"

@interface KTBurrIngreVC ()

@end


@implementation KTBurrIngreVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
      
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"AvocadosBG.jpg"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
    [self.whiteRiceSelectButton.layer setCornerRadius:30];
    [self.pintoBeanSelectButton.layer setCornerRadius:30];
    [self.blackBeanSelectButton.layer setCornerRadius:30];
    [self.veggieButton.layer setCornerRadius:30];
    [self.cheeseButton.layer setCornerRadius:30];
    self.whiteRiceSelectButton.backgroundColor = [UIColor clearColor];
    self.pintoBeanSelectButton.backgroundColor = [UIColor clearColor];
    self.blackBeanSelectButton.backgroundColor = [UIColor clearColor];
    self.veggieButton.backgroundColor = [UIColor clearColor];
    self.cheeseButton.backgroundColor = [UIColor clearColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)whiteRiceSelectPressed:(id)sender {
    self.whiteRiceSelectButton.backgroundColor = [UIColor colorWithRed:79.0f/255.0f green:140.0f/255.0f blue:52.0f/255.0f alpha:1.0];
}
- (IBAction)pintoBeanSelectPress:(id)sender {
    self.pintoBeanSelectButton.backgroundColor = [UIColor colorWithRed:79.0f/255.0f green:140.0f/255.0f blue:52.0f/255.0f alpha:1.0];
}
- (IBAction)blackBeanSelectPress:(id)sender {
    self.blackBeanSelectButton.backgroundColor = [UIColor colorWithRed:79.0f/255.0f green:140.0f/255.0f blue:52.0f/255.0f alpha:1.0];
}
- (IBAction)veggieButtonPressed:(id)sender {
    self.veggieButton.backgroundColor = [UIColor colorWithRed:79.0f/255.0f green:140.0f/255.0f blue:52.0f/255.0f alpha:1.0];
}

- (IBAction)cheeseButtonPress:(id)sender {
    self.cheeseButton.backgroundColor = [UIColor colorWithRed:79.0f/255.0f green:140.0f/255.0f blue:52.0f/255.0f alpha:1.0];
}
@end
