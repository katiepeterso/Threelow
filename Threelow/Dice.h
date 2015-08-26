//
//  Dice.h
//  Threelow
//
//  Created by Katherine Peterson on 2015-08-26.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"

@interface Dice : NSObject

@property (nonatomic) int currentDiceValue;

- (void) singleDiceRoll;

- (void) roll;


@end
