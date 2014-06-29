//
//  KTBurrIngreVC.m
//  HackDin2
//
//  Created by Kevin Taniguchi on 6/28/14.
//  Copyright (c) 2014 Taniguchi. All rights reserved.
//

#import "KTBurrIngreVC.h"

@interface KTBurrIngreVC ()
@property (nonatomic) BOOL whiteRiceSelected;
@property (nonatomic) BOOL pintoBeansSelected;
@property (nonatomic) BOOL blackBeansSelected;
@property (nonatomic) BOOL guacSelected;
@property (nonatomic) BOOL cheeseSelected;
@property (nonatomic) BOOL porkSelected;
@property (nonatomic) BOOL chickenSelected;
@property (nonatomic) BOOL steakSelected;
@property  (nonatomic) BOOL sourCreamSelected;
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
    
    [self.whiteRiceSelectButton.layer setCornerRadius:30];
    [self.pintoBeanSelectButton.layer setCornerRadius:30];
    [self.blackBeanSelectButton.layer setCornerRadius:30];
    [self.veggieButton.layer setCornerRadius:30];
    [self.cheeseButton.layer setCornerRadius:30];
    [self.steakButton.layer setCornerRadius:30];
    self.whiteRiceSelectButton.backgroundColor = [UIColor clearColor];
    self.pintoBeanSelectButton.backgroundColor = [UIColor clearColor];
    self.blackBeanSelectButton.backgroundColor = [UIColor clearColor];
    self.veggieButton.backgroundColor = [UIColor clearColor];
    self.cheeseButton.backgroundColor = [UIColor clearColor];
    self.steakButton.backgroundColor = [UIColor clearColor];
    [self.porkButton.layer setCornerRadius:30];
    [self.bbqButton.layer setCornerRadius:30];
    [self.chickenButton.layer setCornerRadius:30];
    _whiteRiceSelected = NO;
    _pintoBeansSelected = NO;
    _blackBeansSelected = NO;
    _guacSelected = NO;
    _cheeseSelected = NO;
    _porkSelected = NO;
    _chickenSelected = NO;
    _steakSelected = NO;
    _sourCreamSelected = NO;
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
    if (_whiteRiceSelected == NO) {
        self.whiteRiceSelectButton.backgroundColor = [UIColor colorWithRed:79.0f/255.0f green:140.0f/255.0f blue:52.0f/255.0f alpha:1.0];
        _whiteRiceSelected = YES;
    }else{
        _whiteRiceSelected = NO;
        self.whiteRiceSelectButton.backgroundColor = [UIColor clearColor];
    }
}
- (IBAction)pintoBeanSelectPress:(id)sender {
    if (_pintoBeansSelected == NO) {
        _pintoBeansSelected = YES;
        self.pintoBeanSelectButton.backgroundColor = [UIColor colorWithRed:79.0f/255.0f green:140.0f/255.0f blue:52.0f/255.0f alpha:1.0];
    }else{
        _pintoBeansSelected = NO;
        self.pintoBeanSelectButton.backgroundColor = [UIColor clearColor];
    }
}
- (IBAction)blackBeanSelectPress:(id)sender {
    if (_blackBeansSelected == NO) {
        _blackBeansSelected = YES;
        self.blackBeanSelectButton.backgroundColor = [UIColor colorWithRed:79.0f/255.0f green:140.0f/255.0f blue:52.0f/255.0f alpha:1.0];
    }else{
        self.blackBeanSelectButton.backgroundColor = [UIColor clearColor];
    }
}
- (IBAction)veggieButtonPressed:(id)sender {
    self.veggieButton.backgroundColor = [UIColor colorWithRed:79.0f/255.0f green:140.0f/255.0f blue:52.0f/255.0f alpha:1.0];
}

- (IBAction)cheeseButtonPress:(id)sender {
    self.cheeseButton.backgroundColor = [UIColor colorWithRed:79.0f/255.0f green:140.0f/255.0f blue:52.0f/255.0f alpha:1.0];
}
- (IBAction)steakButtonPress:(id)sender {
    self.steakButton.backgroundColor = [UIColor colorWithRed:79.0f/255.0f green:140.0f/255.0f blue:52.0f/255.0f alpha:1.0];
}
- (IBAction)porkButtonPress:(id)sender {
    self.porkButton.backgroundColor = [UIColor colorWithRed:79.0f/255.0f green:140.0f/255.0f blue:52.0f/255.0f alpha:1.0];
}
- (IBAction)bbqButtonPress:(id)sender {
    self.bbqButton.backgroundColor = [UIColor colorWithRed:79.0f/255.0f green:140.0f/255.0f blue:52.0f/255.0f alpha:1.0];
}
- (IBAction)chickenButtonPress:(id)sender {
    self.chickenButton.backgroundColor = [UIColor colorWithRed:79.0f/255.0f green:140.0f/255.0f blue:52.0f/255.0f alpha:1.0];
}
- (IBAction)sourCreamButtonPress:(id)sender {
    self.sourCreamButton.backgroundColor = [UIColor colorWithRed:79.0f/255.0f green:140.0f/255.0f blue:52.0f/255.0f alpha:1.0];
}
@end
