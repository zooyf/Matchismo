//
//  Deck.m
//  Matchismo
//
//  Created by YesterdayFinder on 16/3/17.
//  Copyright © 2016年 CS193p. All rights reserved.
//

#import "Deck.h"

@interface Deck ()
@property (nonatomic, strong) NSMutableArray *cards;
@end

@implementation Deck

@synthesize cards = _cards;

- (void)addCard:(Card *)card atTop:(BOOL)atTop {
    [self.cards insertObject:card atIndex:0];
}

- (void)addCard:(Card *)card {
    [self addCard:card atTop:NO];
}

- (Card *)drawRandomCard {
    
    Card *randomCard = nil;
    
    if (self.cards.count) {
        unsigned index = arc4random() % self.cards.count;
        if (self.cards.count) {
            randomCard = self.cards[index];
            [self.cards removeObject:randomCard];
        }
    }
    
    return randomCard;
}


#pragma mark -- Lazy Loading --

- (NSMutableArray *)cards {
    if (!_cards) {
        _cards = [NSMutableArray array];
    }
    return _cards;
}

@end
