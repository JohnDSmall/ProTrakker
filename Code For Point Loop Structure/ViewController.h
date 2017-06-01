//
//  ViewController.h
//  Code For Point Loop Structure
//
//  Created by Johnathan Small on 5/26/17.
//  Copyright © 2017 Spise Tech. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "CheckMatch.h"
#import "Player.h"

@class CheckMatch;
@class Player;

@interface ViewController : UIViewController

//initialize classes for players
@property (strong, nonatomic) Player *player1;
@property (strong, nonatomic) Player *player2;

//Properties for Checking Match in progress
@property (nonatomic) bool matchInProgress;
@property (nonatomic) CheckMatch *checkMatchProgress;

//Properties for checking who won point
@property (nonatomic) CheckMatch *checkPointWinner;

//Properties for updating score
@property (nonatomic) CheckMatch *updateScore;

//Properties for playing tiebreaker
@property (nonatomic) CheckMatch *playTiebreaker;



//Properties connected to labels and actions on View Controller

@property (weak, nonatomic) IBOutlet UILabel *playMatchLabel;

@property (weak, nonatomic) IBOutlet UILabel *playerOneTotalPointsLabel;
@property (weak, nonatomic) IBOutlet UILabel *playerTwoTotalPointsLabel;
@property (weak, nonatomic) IBOutlet UILabel *playerOneGamesFirstLabel;
@property (weak, nonatomic) IBOutlet UILabel *playerTwoGamesFirstLabel;
@property (weak, nonatomic) IBOutlet UILabel *playerOneGamesSecondLabel;
@property (weak, nonatomic) IBOutlet UILabel *playerTwoGamesSecondLabel;
@property (weak, nonatomic) IBOutlet UILabel *playerOneGamesThirdLabel;
@property (weak, nonatomic) IBOutlet UILabel *playerTwoGamesThirdLabel;

 

@property (weak, nonatomic) IBOutlet UIButton *playMatchButton;




//methods














@end

