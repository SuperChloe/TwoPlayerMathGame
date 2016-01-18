//
//  Player.h
//  Two Player Math Game
//
//  Created by Chloe on 2016-01-18.
//  Copyright © 2016 Chloe Horgan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic, assign) int lives;
@property (nonatomic, strong) NSString *name;

- (instancetype)initWithName:(NSString *)name;
- (void)loseLife;

@end
