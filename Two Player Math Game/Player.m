//
//  Player.m
//  Two Player Math Game
//
//  Created by Chloe on 2016-01-18.
//  Copyright © 2016 Chloe Horgan. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _lives = 3;
        _name = name;
    }
    return self;
}

- (void)loseLife {
    
}

@end
