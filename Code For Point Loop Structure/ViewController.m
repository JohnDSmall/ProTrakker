//
//  ViewController.m
//  Code For Point Loop Structure
//
//  Created by Johnathan Small on 5/26/17.
//  Copyright © 2017 Spise Tech. All rights reserved.
//

#import "ViewController.h"
#import "CheckMatch.h"
#import "Player.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Load Two classes of type Player

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)playMatch:(id)sender {
    Player *player1 = [[Player alloc]init];
    Player *player2 = [[Player alloc]init];
    self.playMatchLabel.text = @"Match In Progress!";
    
    player1.playerName = @"Jim";
    player2.playerName = @"John";
    
    self.matchInProgress = TRUE;
    
    while(self.matchInProgress == TRUE){
        int winner = arc4random_uniform(2);
        
        if (winner == 0) {
            player1.pointCount += 1;
            player1.totalPointsWon ++;
            //[player1 updateScore:player1 :player2];
            if (player1.pointCount >= 4 && (player1.pointCount-player2.pointCount) >=2 ) {
                player1.gameCount ++;
                player1.pointCount = 0;
                player2.pointCount = 0;
                
                if (player1.gameCount >= 6 && (player1.gameCount-player2.gameCount)>=2) {
                    player1.setCount ++;
                    if (player1.setCount+player2.setCount == 1) {
                        player1.gamesSetOne = player1.gameCount;
                        player2.gamesSetOne= player2.gameCount;
                        player1.gameCount = 0;
                        player2.gameCount = 0;
                    }
                    else if (player1.setCount+player2.setCount == 2){
                        player1.gamesSetTwo = player1.gameCount;
                        player2.gamesSetTwo = player2.gameCount;
                        player1.gameCount = 0;
                        player2.gameCount = 0;
                    }
                    else if (player1.setCount+player2.setCount == 3){
                        player1.gamesSetThree = player1.gameCount;
                        player2.gamesSetThree = player2.gameCount;
                        player1.gameCount = 0;
                        player2.gameCount = 0;
                    }
                    
                }
            }

        }
        
        else if (winner == 1){
            player2.pointCount ++;
            player2.totalPointsWon ++;
           // [self.updateScore updateScore:player1 :player2];
            if (player2.pointCount >= 4 && (player2.pointCount-player1.pointCount) >= 2){
                player2.gameCount ++;
                player1.pointCount = 0;
                player2.pointCount = 0;
                
                if (player2.gameCount >= 6 && (player2.gameCount-player1.gameCount)>=2) {
                    player2.setCount ++;
                    if (player2.setCount+player1.setCount == 1) {
                        player1.gamesSetOne = player1.gameCount;
                        player2.gamesSetOne= player2.gameCount;
                        player1.gameCount = 0;
                        player2.gameCount = 0;
                    }
                    else if (player2.setCount+player1.setCount == 2){
                        player1.gamesSetTwo = player1.gameCount;
                        player2.gamesSetTwo = player2.gameCount;
                        player1.gameCount = 0;
                        player2.gameCount = 0;
                    }
                    else if (player1.setCount+player2.setCount == 3){
                        player1.gamesSetThree = player2.gameCount;
                        player2.gamesSetThree = player2.gameCount;
                        player1.gameCount = 0;
                        player2.gameCount = 0;
                    }
                    
                }
                
            }

        }
        if (player1.gameCount == 6 && player2.gameCount == 6) {
            //[self.playTiebreaker playTiebreaker:player1 :player2];
            bool tiebreakerInProgress = true;
            while (tiebreakerInProgress) {
                int pointWinner = arc4random_uniform(2);
                
                if (pointWinner == 0) {
                    player1.pointCount ++;
                }
                else if (pointWinner == 1){
                    player2.pointCount ++;
                }
                if (player1.pointCount >= 7 && (player1.pointCount-player2.pointCount)>=2) {
                    player1.gameCount ++;
                    player1.pointCount = 0;
                    player2.pointCount = 0;
                    tiebreakerInProgress = false;
                }
                else if (player2.pointCount >= 7 && (player2.pointCount-player1.pointCount)>=2){
                    player2.gameCount ++;
                    player1.pointCount = 0;
                    player2.pointCount = 0;
                    tiebreakerInProgress = false;
                }
                
            }
            
            if (player2.setCount+player1.setCount == 1) {
                player1.gamesSetOne = player1.gameCount;
                player2.gamesSetOne= player2.gameCount;
                player1.gameCount = 0;
                player2.gameCount = 0;
            }
            else if (player2.setCount+player1.setCount == 2){
                player1.gamesSetTwo = player1.gameCount;
                player2.gamesSetTwo = player2.gameCount;
                player1.gameCount = 0;
                player2.gameCount = 0;
            }
            else if (player1.setCount+player2.setCount == 3){
                player1.gamesSetThree = player1.gameCount;
                player2.gamesSetThree = player2.gameCount;
                player1.gameCount = 0;
                player2.gameCount = 0;
            }

        }
        //[self.checkMatchProgress checkMatchCompleted:player1 :player2];
        if(player1.setCount == 2 || player2.setCount == 2){
            self.matchInProgress = false;
        }
    }
    
    self.playerOneGamesFirstLabel.text = [NSString stringWithFormat:@"%i", player1.gamesSetOne];
    self.playerTwoGamesFirstLabel.text = [NSString stringWithFormat:@"%i", player2.gamesSetOne];
    self.playerOneGamesSecondLabel.text = [NSString stringWithFormat:@"%i", player1.gamesSetTwo];
    self.playerTwoGamesSecondLabel.text = [NSString stringWithFormat:@"%i", player2.gamesSetTwo];
    self.playerOneGamesThirdLabel.text = [NSString stringWithFormat:@"%i", player1.gamesSetThree];
    self.playerTwoGamesThirdLabel.text = [NSString stringWithFormat:@"%i", player2.gamesSetThree];
    
}

@end
