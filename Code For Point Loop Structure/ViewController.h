//
//  ViewController.h
//  Code For Point Loop Structure
//
//  Created by Johnathan Small on 5/26/17.
//  Copyright © 2017 Spise Tech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//initialize all internal variables for keeping score

@property (nonatomic) int playerOneSets;
@property (nonatomic) int playerTwoSets;
@property (nonatomic) int playerOneTotalPoints;
@property (nonatomic) int playerTwoTotalPoints;
@property (nonatomic) int playerOnePoints;
@property (nonatomic) int playerTwoPoints;
@property (nonatomic) int playerOneGameCount;
@property (nonatomic) int playerTwoGameCount;
@property (nonatomic) int playerOneGamesFirst;
@property (nonatomic) int playerTwoGamesFirst;
@property (nonatomic) int playerOneGamesSecond;
@property (nonatomic) int playerTwoGamesSecond;
@property (nonatomic) int playerOneGamesThird;
@property (nonatomic) int playerTwoGamesThird;


@property (weak, nonatomic) IBOutlet UILabel *playerOneTotalPointsLabel;
@property (weak, nonatomic) IBOutlet UILabel *playerTwoTotalPointsLabel;
@property (weak, nonatomic) IBOutlet UILabel *playerOneGamesFirstLabel;
@property (weak, nonatomic) IBOutlet UILabel *playerTwoGamesFirstLabel;
@property (weak, nonatomic) IBOutlet UILabel *playerOneGamesSecondLabel;
@property (weak, nonatomic) IBOutlet UILabel *playerTwoGamesSecondLabel;
@property (weak, nonatomic) IBOutlet UILabel *playerOneGamesThirdLabel;
@property (weak, nonatomic) IBOutlet UILabel *playerTwoGamesThirdLabel;

@property (weak, nonatomic) IBOutlet UIButton *playMatchButton;














@end

