//
//  CheckMatch.m
//  Code For Point Loop Structure
//
//  Created by Johnathan Small on 5/27/17.
//  Copyright © 2017 Spise Tech. All rights reserved.
//

#import "CheckMatch.h"
#import "ViewController.h"
#import "Player.h"

@implementation CheckMatch

-(BOOL)checkMatchCompleted:(Player*)player1 :(Player*)player2{
    BOOL matchComplete = NO;
    if(player1.setCount == 2 || player2.setCount == 2){
        matchComplete = TRUE;
    };
    
    return matchComplete;
};


-(int)determineWinnerOfPoint{
    int pointWinner = arc4random_uniform(2);
    
    return pointWinner;
};


/*
- (void)updateScore:(Player*)playerOne :(Player*)playerTwo{
    
    if (playerOne.pointCount >= 4 && (playerOne.pointCount-playerTwo.pointCount) >=2 ) {
        playerOne.gameCount ++;
        playerOne.pointCount = 0;
        playerTwo.pointCount = 0;
        
        if (playerOne.gameCount >= 6 && (playerOne.gameCount-playerTwo.gameCount)>=2) {
            playerOne.setCount ++;
            if (playerOne.setCount+playerTwo.setCount == 1) {
                playerOne.gamesSetOne = playerOne.gameCount;
                playerTwo.gamesSetOne= playerTwo.gameCount;
                playerOne.gameCount = 0;
                playerTwo.gameCount = 0;
            }
            else if (playerOne.setCount+playerTwo.setCount == 2){
                playerOne.gamesSetTwo = playerOne.gameCount;
                playerTwo.gamesSetTwo = playerTwo.gameCount;
                playerOne.gameCount = 0;
                playerTwo.gameCount = 0;
            }
            else if (playerOne.setCount+playerTwo.setCount == 3){
                playerOne.gamesSetThree = playerOne.gameCount;
                playerTwo.gamesSetThree = playerTwo.gameCount;
                playerOne.gameCount = 0;
                playerTwo.gameCount = 0;
            }
            
        }
    }
    if (playerTwo.pointCount >= 4 && (playerTwo.pointCount-playerTwo.pointCount) >= 2){
        playerTwo.gameCount ++;
        playerOne.pointCount = 0;
        playerTwo.pointCount = 0;
        
        if (playerTwo.gameCount >= 6 && (playerTwo.gameCount-playerOne.gameCount)>=2) {
            playerTwo.setCount ++;
            if (playerTwo.setCount+playerOne.setCount == 1) {
                playerOne.gamesSetOne = playerOne.gameCount;
                playerTwo.gamesSetOne= playerTwo.gameCount;
                playerOne.gameCount = 0;
                playerTwo.gameCount = 0;
            }
            else if (playerTwo.setCount+playerOne.setCount == 2){
                playerOne.gamesSetTwo = playerOne.gameCount;
                playerTwo.gamesSetTwo = playerTwo.gameCount;
                playerOne.gameCount = 0;
                playerTwo.gameCount = 0;
            }
            else if (playerOne.setCount+playerTwo.setCount == 3){
                playerOne.gamesSetThree = playerOne.gameCount;
                playerTwo.gamesSetThree = playerTwo.gameCount;
                playerOne.gameCount = 0;
                playerTwo.gameCount = 0;
            }
            
        }

    }
    
};
 */

- (void)playTiebreaker:(Player*)player1 :(Player*)player2{
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



@end
