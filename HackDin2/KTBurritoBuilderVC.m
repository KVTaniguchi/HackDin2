//
//  KTBurritoBuilderVC.m
//  HackDin2
//
//  Created by Kevin Taniguchi on 6/28/14.
//  Copyright (c) 2014 Taniguchi. All rights reserved.
//

#import "KTBurritoBuilderVC.h"
#import "KTShoppingStore.h"

@interface KTBurritoBuilderVC ()
@property SPUserResizableView *riceView;
@property SPUserResizableView *beanView;
@property SPUserResizableView *avoView;
@property SPUserResizableView *beefView;
@property SPUserResizableView *porkView;
@property SPUserResizableView *cheeseView;

@property (nonatomic,strong) NSMutableArray *chilePoints;
@property (nonatomic,strong) NSNumber *totalPoints;
@end

@implementation KTBurritoBuilderVC


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.pointsLabel.text = [NSString stringWithFormat:@"%@", [KTShoppingStore sharedStore].userPoints];
    NSLog(@"store has: %@", [KTShoppingStore sharedStore].userPoints);
    _totalPoints = [KTShoppingStore sharedStore].userPoints;
    [self.navigationController setNavigationBarHidden:YES];
    [self.burritoBackGround.layer setCornerRadius:20];
    CGRect initRiceFrame = CGRectMake(37, 90, 200, 400);
    CGRect initBeanFrame = CGRectMake(276, 90, 200, 400);
    CGRect initAvoFrame = CGRectMake(516, 90, 200, 400);
    CGRect initBeefFrame = CGRectMake(700, 90, 400, 400);
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
    self.beefView = [[SPUserResizableView alloc]initWithFrame:initBeefFrame];
    self.beefView.delegate = self;
    self.beefView.contentView = self.beefImage;
    self.beefView.clipsToBounds = YES;
    [self.beefView.layer setCornerRadius:20];
    [self.view addSubview:self.beefView];
    
    _chilePoints = [NSMutableArray arrayWithObjects:_one,_two,_three,_four,_five,_six, _seven, _eight, _nine, _ten, _eleven, _twelve, _thirteen, _fourteen, _fifteen, _sixteen, nil];
    [self clearChiles];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self adjustVisibleChiles];
    });
}

-(void)userResizableViewDidBeginEditing:(SPUserResizableView *)userResizableView{
    [self clearChiles];
}

-(void)userResizableViewDidEndEditing:(SPUserResizableView *)userResizableView{
    NSLog(@"the width of beanview: %f", _beanView.frame.size.width);
    NSLog(@"the width of riceview: %f", _riceView.frame.size.width);
    NSLog(@"the width of avoiew %f",_avoView.frame.size.width);
    NSLog(@"the width of meatview %f", _beanView.frame.size.width);
    self.beansValue = [NSNumber numberWithFloat:_beanView.frame.size.width];
    self.riceValue = [NSNumber numberWithFloat:self.riceView.frame.size.width];
    self.beefValue = [NSNumber numberWithFloat:self.beefView.frame.size.width];
    self.avocadoValue = [NSNumber numberWithFloat:self.avoView.frame.size.width];
    [self calculatePoints];
}

-(void)calculatePoints{
    int beansX = [self.beansValue intValue] / 50;
    int beefX = [self.beefValue intValue] / 100;
    int avoX = [self.avocadoValue intValue] / 50;
    int riceX = [self.riceValue intValue] / 50;
    int total = beansX - beefX + riceX + avoX;
    _totalPoints = [NSNumber numberWithInt:total];
    self.pointsLabel.text = [NSString stringWithFormat:@"%d", total];
    [self adjustVisibleChiles];
}

-(void)adjustVisibleChiles{
    if ([_totalPoints intValue] < 17) {
        if ([_totalPoints intValue] > 0) {
            [_one setHidden:NO];
        }
        for (int index = 0; index < [_totalPoints intValue]; index++) {
            [[_chilePoints objectAtIndex:index] setHidden:NO];
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

-(void)clearChiles{
    for (UIImageView *chilePoint in _chilePoints) {
        [chilePoint setHidden:YES];
    }
}

#pragma mark - Navigation


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{

}


@end
