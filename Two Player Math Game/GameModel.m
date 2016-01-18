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
        _player1 = [[Player alloc] init];
        _player2 = [[Player alloc] init];
        NSLog(@"New Game");
    }
    return self;
}

- (void)generateEquation {
    int firstNumber = arc4random_uniform(20);
    int secondNumber = arc4random_uniform(20);
    int answer;
    answer = firstNumber + secondNumber;
}



@end
