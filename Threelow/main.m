//
//  main.m
//  Threelow
//
//  Created by Katherine Peterson on 2015-08-26.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputCollector.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputCollector *diceRollPrompt = [InputCollector new];
        GameController *gameDice = [GameController new];
        
        while (diceRollPrompt) {
            NSString *currentSelection = [diceRollPrompt inputForPrompt:@"Would you like to roll, hold, release or calculate?"];
            
            if ([currentSelection isEqualToString:@"roll\n"]) {
                [gameDice rollAllDice];
            }
            
            else if ([currentSelection isEqualToString:@"hold\n"]) {
                NSString *holdDiceIndices = [diceRollPrompt inputForPrompt:@"Please enter the index of each die you would like to hold, separated by a comma."];
//                [gameDice holdDie:holdDiceIndices];
            }
        }
    }
    return 0;
}
