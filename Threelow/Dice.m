//
//  Dice.m
//  Threelow
//
//  Created by Katherine Peterson on 2015-08-26.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import "Dice.h"
#import "GameController.h"

@implementation Dice

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.diceSymbols = @[@"⚀", @"⚁", @"⚂", @"⚃", @"⚄", @"⚅"];
    }
    return self;
}

- (void) singleDiceRoll {
    
    self.currentDiceValue = arc4random_uniform(6)+1;
    self.currentDiceSymbol = self.diceSymbols[self.currentDiceValue-1];
}


@end
