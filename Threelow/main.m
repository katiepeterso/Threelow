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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputCollector *diceRollPrompt = [InputCollector new];
        Dice *allDice = [Dice new];
        
        while (diceRollPrompt) {
            NSString *currentSelection = [diceRollPrompt inputForPrompt:@"Would you like to roll, hold or calculate?"];
            
            if ([currentSelection isEqualTo:@"roll\n"]) {
                [allDice roll];
            }
        }
    }
    return 0;
}
