//
//  Dice.m
//  Threelow
//
//  Created by Katherine Peterson on 2015-08-26.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (void) singleDiceRoll {
    self.currentDiceValue = arc4random_uniform(6)+1;
}

- (void) roll {
    Dice *dice1 = [Dice new];
    Dice *dice2 = [Dice new];
    Dice *dice3 = [Dice new];
    Dice *dice4 = [Dice new];
    Dice *dice5 = [Dice new];
        
    [dice1 singleDiceRoll];
    [dice2 singleDiceRoll];
    [dice3 singleDiceRoll];
    [dice4 singleDiceRoll];
    [dice5 singleDiceRoll];
        
    NSLog(@"The 5 dice values are %d, %d, %d, %d, %d", dice1.currentDiceValue, dice2.currentDiceValue, dice3.currentDiceValue, dice4.currentDiceValue, dice5.currentDiceValue);
}

@end
