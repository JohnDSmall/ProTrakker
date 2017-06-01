//
//  CheckMatch.h
//  Code For Point Loop Structure
//
//  Created by Johnathan Small on 5/27/17.
//  Copyright © 2017 Spise Tech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewController.h"
#import "Player.h"

@class ViewController;
@class Player;

@interface CheckMatch : NSObject




//Functions

-(BOOL)checkMatchCompleted:(Player*)playerOne :(Player*)playerTwo;

-(int)determineWinnerOfPoint;


//- (void)updateScore:(Player*)playerOne :(Player*)playerTwo;

- (void)playTiebreaker:(Player*)playerOne :(Player*)playerTwo;

@end
