//
//  Dice.h
//  Threelow
//
//  Created by Katherine Peterson on 2015-08-26.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "GameController.h"

@interface Dice : NSObject

@property (nonatomic) int currentDiceValue;
@property (nonatomic) NSArray *diceSymbols;
@property (nonatomic) NSString *currentDiceSymbol;

- (void) singleDiceRoll;

@end
