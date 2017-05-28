//
//  ViewController.m
//  Code For Point Loop Structure
//
//  Created by Johnathan Small on 5/26/17.
//  Copyright © 2017 Spise Tech. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//play a match with a random score
- (IBAction)playMatch {
    bool match = NO;
    
    //continue to play the match until it is over
    while(match != YES){
        
        //create a random number to determine who wins the point
        int random = arc4random_uniform(2);
        
        //if player 1 wins the point add the point to his score, and then determine his games and what to do next
        if(random == 0){
            self.playerOneTotalPoints ++;
            self.playerOnePoints ++;
            
            //determine if that is a game for player 1, if it is reset the point counters and add a game
            if(self.playerOnePoints >= 4 && (self.playerOnePoints - self.playerTwoPoints)>= 2){
                self.playerOnePoints = 0;
                self.playerTwoPoints = 0;
                self.playerOneGameCount ++;
                
                //play a tiebreaker if that makes 6 games all
                if (self.playerOneGameCount == 6 && self.playerTwoGameCount == 6) {
                    
                    //tiebraker
                    bool tiebreaker = YES;
                    
                    while(tiebreaker){
                        int random = arc4random_uniform(2);
                        
                        if(random == 0){
                            self.playerOneTotalPoints ++;
                            self.playerOnePoints ++;
                            
                            if(self.playerOnePoints >= 7 && (self.playerOnePoints - self.playerTwoPoints)>=2 ){
                                self.playerOneSets ++;
                                self.playerOneGameCount = 0;
                                self.playerTwoGameCount = 0;
                                tiebreaker = NO;
                                
                                if(self.playerOneSets == 0 && self.playerTwoSets == 0){
                                self.playerOneGamesFirstLabel.text = @"7";
                                }
                                else if(self.playerOneSets == 1 && self.playerTwoSets == 0){
                                self.playerOneGamesSecondLabel.text = @"7";
                                }
                            }
                            
                    }
                        else{
                            self.playerTwoPoints ++;
                            self.playerTwoTotalPoints ++;
                            
                            if(self.playerTwoPoints >= 7 && (self.playerTwoPoints - self.playerOnePoints)>=2 ){
                                self.playerTwoSets ++;
                                self.playerOneGameCount = 0;
                                self.playerTwoGameCount = 0;
                                tiebreaker = NO;
                            }
                            
                        }
                        
                }
                
                
                //determine if that means player 1 won a set
                if(self.playerOneGameCount >= 6 && (self.playerOneGameCount-self.playerTwoGameCount) >= 2) {
                    
                    }
                
            }
            
        }
        
        if(self.playerOneSets == 2 || self.playerTwoSets == 2){
            match = YES;
        }
        
    }
  }
}

@end
