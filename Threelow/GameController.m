//
//  GameController.m
//  Threelow
//
//  Created by Katherine Peterson on 2015-08-26.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import "GameController.h"
#import "Dice.h"

@implementation GameController

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.heldDice = [NSMutableArray array];
        self.allDice = [NSMutableArray array];
    }
    return self;
}


- (void) rollDice {
    
    [self.allDice removeAllObjects];
    int howManyToRoll = 5-self.heldDice.count;
    int i = 1;
    
    for (; i <= howManyToRoll; i++) {
        Dice *dice = [Dice new];
        [dice singleDiceRoll];
        [self.allDice addObject:dice];
        NSLog(@"You rolled %@",((Dice*)self.allDice[i-1]).currentDiceSymbol);
    }
}


-(void) holdOrRelease: (NSString *) selection whichDice:(NSString *) diceIndices {
    NSString *trimmedIndexString = [diceIndices stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    NSArray *indexArray = [trimmedIndexString componentsSeparatedByString:@","];
    
    if ([selection isEqualToString:@"hold\n"]) {
        for (NSString *index in indexArray) {
            int number = [index intValue];
            [self.heldDice addObject:self.allDice[number]];
        }
        for (Dice *eachDie in self.heldDice) {
            NSLog(@"Held die: %@", eachDie.currentDiceSymbol);
        }
    }
    else if ([selection isEqualToString:@"release\n"]) {
        for (NSString *index in indexArray) {
            int number = [index intValue];
            NSLog(@"Released die: %@", ((Dice*)self.heldDice[number]).currentDiceSymbol);
            [self.heldDice removeObjectAtIndex:number];
        }
    }
    
    int currentScore = 0;
    for (Dice *eachDie in self.heldDice) {
        if (eachDie.currentDiceValue != 3) {
            currentScore = currentScore + eachDie.currentDiceValue;
        }
    }
    NSLog(@"Current score: %i", currentScore);
}


- (void) resetAll {
    [self.heldDice removeAllObjects];
    [self.allDice removeAllObjects];
}

@end

