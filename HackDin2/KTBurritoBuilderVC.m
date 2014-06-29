//
//  KTBurritoBuilderVC.m
//  HackDin2
//
//  Created by Kevin Taniguchi on 6/28/14.
//  Copyright (c) 2014 Taniguchi. All rights reserved.
//

#import "KTBurritoBuilderVC.h"

@interface KTBurritoBuilderVC ()
@property SPUserResizableView *riceView;
@property SPUserResizableView *beanView;
@property SPUserResizableView *avoView;
@property SPUserResizableView *beefView;
@end

@implementation KTBurritoBuilderVC


- (void)viewDidLoad
{
    [super viewDidLoad];
    CGRect initRiceFrame = CGRectMake(37, 70, 200, 400);
    CGRect initBeanFrame = CGRectMake(276, 70, 200, 400);
    CGRect initAvoFrame = CGRectMake(516, 70, 200, 400);
    self.beanView = [[SPUserResizableView alloc]initWithFrame:initBeanFrame];
    self.beanView.delegate = self;
    self.beanView.contentView = self.beansImage;
    self.beanView.clipsToBounds = YES;
    [self.beanView.layer setCornerRadius:20];
    [self.view addSubview:self.beanView];
    _riceView = [[SPUserResizableView alloc]initWithFrame:initRiceFrame];
    _riceView.delegate = self;
    _riceView.contentView = self.riceImage;
    _riceView.clipsToBounds = YES;
    [_riceView.layer setCornerRadius:20];
    [self.view addSubview:_riceView];
    _avoView = [[SPUserResizableView alloc]initWithFrame:initAvoFrame];
    _avoView.delegate = self;
    _avoView.contentView = self.avocadoImage;
    _avoView.clipsToBounds = YES;
    [_avoView.layer setCornerRadius:20];
    [self.view addSubview:_avoView];
}

-(void)userResizableViewDidEndEditing:(SPUserResizableView *)userResizableView{
    NSLog(@"the width of beanview: %f", _beanView.frame.size.width);
    NSLog(@"the width of riceview: %f", _riceView.frame.size.width);
    NSLog(@"the width of avoiew %f",_avoView.frame.size.width);
    NSLog(@"the width of meatview %f", _beanView.frame.size.width);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}





#pragma mark - Navigation


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{

}


@end
