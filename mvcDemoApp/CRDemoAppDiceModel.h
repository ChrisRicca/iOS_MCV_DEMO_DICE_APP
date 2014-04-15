//
//  CRDemoAppRandomNumberGenerator.h
//  mvcDemoApp
//
//  Created by Chris Ricca on 4/15/14.
//  Copyright (c) 2014 Chris Ricca. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CRDemoAppDiceModel : NSObject
- (id) initWithSides:(NSInteger)sides;
- (NSInteger)doRoll;

@property (assign,nonatomic,readonly) NSInteger sides;

@end
