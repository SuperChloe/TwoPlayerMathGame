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

- (instancetype)init {
    self = [super init];
    if (self) {
        _player1 = [[Player alloc] initWithName:@"Player 1"];
        _player2 = [[Player alloc] initWithName:@"Player 2"];
        NSLog(@"New Game");
    }
    return self;
}

- (void)generateEquation {
    int firstNumber = arc4random_uniform(20);
    int secondNumber = arc4random_uniform(20);
    self.equationAnswer = firstNumber + secondNumber;
    self.displayEquation = [NSString stringWithFormat:@"%@: %d + %d = ?", self.player1.name, firstNumber, secondNumber];
}

- (void)checkAnswer {
    if (self.inputAnswer == self.equationAnswer) {
        NSLog(@"Correct!");
    } else {
        NSLog(@"Wrong!");
    }
}



@end
