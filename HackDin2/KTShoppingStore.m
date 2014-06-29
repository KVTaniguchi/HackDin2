//
//  KTShoppingStore.m
//  HackDin2
//
//  Created by Kevin Taniguchi on 6/29/14.
//  Copyright (c) 2014 Taniguchi. All rights reserved.
//

#import "KTShoppingStore.h"

@implementation KTShoppingStore

+(KTShoppingStore*)sharedStore{
    static KTShoppingStore *sharedStore = nil;
    if (!sharedStore) {
        sharedStore = [[super allocWithZone:nil]init];
    }
    return sharedStore;
}

-(id)init{
    self = [super init];
    return self;
}

+(id)allocWithZone:(NSZone*)zone{
    return [self sharedStore];
}

-(NSMutableArray*)itemsInBurrito{
    return self.itemsInBurrito;
}



@end
