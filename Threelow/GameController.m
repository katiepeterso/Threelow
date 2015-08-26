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

- (void) rollAllDice {
    self.allDice = [NSMutableArray array];
    
    int i = 1;
    for (; i <= 5; i++) {
        Dice *dice = [Dice new];
        [dice singleDiceRoll];
        [self.allDice addObject:dice];
    }
    
    NSLog(@"The 5 dice values are %d, %d, %d, %d, %d", ((Dice*)self.allDice[0]).currentDiceValue, ((Dice *)self.allDice[1]).currentDiceValue, ((Dice*)self.allDice[2]).currentDiceValue, ((Dice *)self.allDice[3]).currentDiceValue, ((Dice*)self.allDice[4]).currentDiceValue);
}


-(void) holdOrRelease: (NSString *) selection whichDice:(NSString *) diceIndices {
    NSString *trimmedIndexString = [diceIndices stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    NSArray *indexArray = [trimmedIndexString componentsSeparatedByString:@","];
    
    if ([selection isEqualToString:@"hold\n"]) {
        for (NSString *index in indexArray) {
            int number = [index intValue];
            [self.heldDice addObject:self.allDice[number]];
        }
    }
    else if ([selection isEqualToString:@"release\n"]) {
        for (NSString *index in indexArray) {
            int number = [index intValue];
            [self.heldDice addObject:self.allDice[number]];
        }
    }
}

@end

