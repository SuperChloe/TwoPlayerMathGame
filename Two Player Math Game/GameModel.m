//
//  GameModel.m
//  Two Player Math Game
//
//  Created by Chloe on 2016-01-18.
//  Copyright © 2016 Chloe Horgan. All rights reserved.
//

#import "GameModel.h"
#import "ViewController.h"

@implementation GameModel

const int kMaxNumber = 20;

- (instancetype)init {
    self = [super init];
    if (self) {
        _player1 = [[Player alloc] initWithName:@"Player 1"];
        _player2 = [[Player alloc] initWithName:@"Player 2"];
    }
    return self;
}


- (void)generateEquation:(Player *)player {
    int firstNumber = arc4random_uniform(kMaxNumber);
    int secondNumber = arc4random_uniform(kMaxNumber);
    self.equationAnswer = firstNumber + secondNumber;
    if (player == self.player1) {
        self.displayEquation = [NSString stringWithFormat:@"%@: %d + %d = ?", self.player1.name, firstNumber, secondNumber];
    } else if (player == self.player2) {
        self.displayEquation = [NSString stringWithFormat:@"%@: %d + %d = ?", self.player2.name, firstNumber, secondNumber];
    }
}

- (BOOL)checkAnswer {
    if (self.inputAnswer == self.equationAnswer) {
        if (self.currentPlayer) {
            self.player1.lives = self.player1.lives + 1;
        } else {
            self.player2.lives = self.player2.lives + 1;
        }
        NSLog(@"Correct!");
        return YES;
    } else {
        if (self.currentPlayer) {
            self.player1.lives = self.player1.lives - 1;
        } else {
            self.player2.lives = self.player2.lives - 1;
        }
        NSLog(@"Wrong!");
        return NO;
    }
}



@end
