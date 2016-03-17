//
//  Deck.h
//  Matchismo
//
//  Created by YesterdayFinder on 16/3/17.
//  Copyright © 2016年 CS193p. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

/**
 *  add card to Deck and choose the add location
 *
 *  @param card  card to add
 *  @param atTop whether add the card to the start of the cards.
 */
- (void)addCard:(Card *)card atTop:(BOOL)atTop;
/**
 *  add card to Deck to the end of the cards.
 *
 *  @param card card to add
 */
- (void)addCard:(Card *)card;

/**
 *  Take one card out of the cards by random.
 *
 *  @return random selected card.
 */
- (Card *)drawRandomCard;

@end
