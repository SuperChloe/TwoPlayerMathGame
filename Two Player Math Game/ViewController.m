//
//  ViewController.m
//  Two Player Math Game
//
//  Created by Chloe on 2016-01-18.
//  Copyright © 2016 Chloe Horgan. All rights reserved.
//

#import "ViewController.h"
#import "GameModel.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *player1ScoreLabel;
@property (weak, nonatomic) IBOutlet UILabel *player2ScoreLabel;
@property (nonatomic, strong) NSMutableArray *inputNumbers;
@property (nonatomic, strong) GameModel *startGame;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _startGame = [[GameModel alloc] init];
    _inputNumbers = [[NSMutableArray alloc] init];
    
    [self.startGame generateEquation];
    self.titleLabel.text = self.startGame.displayEquation;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)createAnswer {
    NSString *answerString = [self.inputNumbers componentsJoinedByString:@""];
    [self.inputNumbers removeAllObjects];
    self.startGame.inputAnswer = [answerString intValue];
    NSLog(@"%d", self.startGame.inputAnswer);
}

#pragma mark - Number Buttons

- (IBAction)enterButton:(UIButton *)sender {
    [self createAnswer];
}
- (IBAction)zeroButton:(UIButton *)sender {
    [self.inputNumbers addObject:@"0"];
}
- (IBAction)oneButton:(UIButton *)sender {
    [self.inputNumbers addObject:@"1"];
}
- (IBAction)twoButton:(UIButton *)sender {
    [self.inputNumbers addObject:@"2"];
}
- (IBAction)threeButton:(UIButton *)sender {
    [self.inputNumbers addObject:@"3"];
}
- (IBAction)fourButton:(UIButton *)sender {
    [self.inputNumbers addObject:@"4"];
}
- (IBAction)fiveButton:(UIButton *)sender {
    [self.inputNumbers addObject:@"5"];
}
- (IBAction)sixButton:(UIButton *)sender {
    [self.inputNumbers addObject:@"6"];
}
- (IBAction)sevenButton:(UIButton *)sender {
   [self.inputNumbers addObject:@"7"];
}
- (IBAction)eightButton:(UIButton *)sender {
    [self.inputNumbers addObject:@"8"];
}
- (IBAction)nineButton:(UIButton *)sender {
    [self.inputNumbers addObject:@"9"];
}



@end
