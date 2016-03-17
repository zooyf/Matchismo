//
//  ViewController.m
//  Matchismo
//
//  Created by YesterdayFinder on 16/3/17.
//  Copyright © 2016年 CS193p. All rights reserved.
//

#import "ViewController.h"
#import "Card.h"
#import "PlayingCardDeck.h"

@interface ViewController ()
/**
 *  label that indicate the count of click action
 */
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
/**
 *  the click count
 */
@property (nonatomic) int flipCount;
/**
 *  the playing card deck
 */
@property (nonatomic, strong) Deck *deck;
@end

@implementation ViewController

- (void)setFlipCount:(int)flipCount {
    
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips:%d", flipCount];
    _flipCount = flipCount;
}

- (IBAction)touchCardButton:(UIButton *)sender {
    
    if ([sender.currentTitle length]) {
        [sender setTitle:@"" forState:UIControlStateNormal];
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"] forState:UIControlStateNormal];
    } else {
        Card *card = [self.deck drawRandomCard];
        if (card) {
            [sender setTitle:card.contents forState:UIControlStateNormal];
            [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"] forState:UIControlStateNormal];
            self.flipCount++;
        }
    }
}

- (Deck *)deck {
    if (!_deck) {
        _deck = [[PlayingCardDeck alloc] init];
    }
    return _deck;
}

@end
