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
            NSString *currentSelection = [diceRollPrompt inputForPrompt:@"Would you like to roll (roll the dice), hold (choose dice to keep), release (choose held dice to release) or reset (release all dice)?"];
            
            if ([currentSelection isEqualToString:@"roll\n"]) {
                [gameDice rollDice];
            }
            
            else if ([currentSelection isEqualToString:@"hold\n"]) {
                NSString *holdDiceIndices = [diceRollPrompt inputForPrompt:@"Please enter the index of each die you would like to hold, separated by a comma."];
                [gameDice holdOrRelease:@"hold\n" whichDice:holdDiceIndices];
            }
            else if ([currentSelection isEqualToString:@"release\n"]) {
                NSString *releaseDiceIndices = [diceRollPrompt inputForPrompt:@"Please enter the index of each die you would like to release, separated by a comma."];
                [gameDice holdOrRelease:@"release\n" whichDice:releaseDiceIndices];
            }
            else if([currentSelection isEqualToString:@"reset\n"]) {
                [gameDice resetAll];
            }

        }
    }
    return 0;
}
