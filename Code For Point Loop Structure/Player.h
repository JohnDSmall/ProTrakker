//
//  Player.h
//  Code For Point Loop Structure
//
//  Created by Johnathan Small on 5/27/17.
//  Copyright © 2017 Spise Tech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewController.h"

@interface Player : NSObject

@property (nonatomic) int pointCount;
@property (nonatomic) int totalPointsWon;
@property (nonatomic) int gameCount;
@property (nonatomic) int gamesSetOne;
@property (nonatomic) int gamesSetTwo;
@property (nonatomic) int gamesSetThree;
@property (nonatomic) int setCount;
@property (strong, nonatomic) NSString *playerName;



@end
