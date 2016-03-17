//
//  PlayingCard.h
//  Matchismo
//
//  Created by YesterdayFinder on 16/3/17.
//  Copyright © 2016年 CS193p. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

/**
 *  suit like ♣︎ or ♥︎
 */
@property(nonatomic, strong) NSString *suit;
/**
 *  rank between 1...13. Which stands for A...K
 */
@property(nonatomic, assign) NSUInteger rank;

/**
 *  valid suit
 *
 *  @return array of string ♠︎ ♣︎ ♥︎ ♦︎
 */
+ (NSArray *)validSuits;
/**
 *  rank string
 *
 *  @return Array inclide A...K. which stands for rank 1...13
 */
+ (NSArray *)rankStrings;
/**
 *  the count of the rank
 *
 *  @return single suit rank count of the card
 */
+ (NSUInteger)maxRank;


@end
