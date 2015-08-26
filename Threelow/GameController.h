//
//  GameController.h
//  Threelow
//
//  Created by Katherine Peterson on 2015-08-26.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameController : NSObject

@property (nonatomic) NSMutableArray *allDice;
@property (nonatomic) NSMutableArray *heldDice;

- (void) rollDice;

- (void) holdOrRelease: (NSString *) selection whichDice:(NSString *) diceIndices;

- (void) resetAll;

@end
