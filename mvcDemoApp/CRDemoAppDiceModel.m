//
//  CRDemoAppRandomNumberGenerator.m
//  mvcDemoApp
//
//  Created by Chris Ricca on 4/15/14.
//  Copyright (c) 2014 Chris Ricca. All rights reserved.
//

#import "CRDemoAppDiceModel.h"

@interface CRDemoAppDiceModel ()
@property (assign,nonatomic) NSInteger sides;
@end

@implementation CRDemoAppDiceModel
- (id)initWithSides:(NSInteger)sides
{
    self = [super init];
    if (self) {
        _sides = sides;
    }
    return self;
}

- (NSInteger) doRoll
{
    if (self.sides > 0) {
        return (arc4random() % self.sides) + 1;
    }
    else {
        return -1;
    }
}
@end
