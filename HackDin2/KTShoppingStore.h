//
//  KTShoppingStore.h
//  HackDin2
//
//  Created by Kevin Taniguchi on 6/29/14.
//  Copyright (c) 2014 Taniguchi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KTShoppingStore : NSObject

+(KTShoppingStore*)sharedStore;
@property (nonatomic,strong) NSMutableArray *itemsInBurrito;
@property (nonatomic,strong) NSNumber *userPoints;
-(NSMutableArray*)itemsInBurrito;
@end
