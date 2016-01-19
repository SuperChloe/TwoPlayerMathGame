//
//  GameModel.h
//  Two Player Math Game
//
//  Created by Chloe on 2016-01-18.
//  Copyright © 2016 Chloe Horgan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface GameModel : NSObject

@property (nonatomic, strong) Player *player1;
@property (nonatomic, strong) Player *player2;
@property (nonatomic, strong) NSString *displayEquation;
@property (nonatomic, assign) int equationAnswer;
@property (nonatomic, assign) int inputAnswer;

- (void)generateEquation:(Player *)player;
- (BOOL)checkAnswer;


@end
