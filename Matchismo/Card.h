//
//  Card.h
//  Matchismo
//
//  Created by YesterdayFinder on 16/3/17.
//  Copyright © 2016年 CS193p. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 *  base class of the Card
 */
@interface Card : NSObject

/**
 *  contents like "A♣︎"
 */
@property(nonatomic, strong) NSString *contents;

/**
 *  whether the card is chosen
 */
@property(nonatomic, getter=isChosen) BOOL chosen;
/**
 *  if the card is matched
 */
@property(nonatomic, getter=isMatched) BOOL matched;

/**
 *  check whether the card is matched to other cards
 *
 *  @param otherCards array of other cards
 *
 *  @return If the card is matched to others return 1, else return 0;
 */
- (int)match:(NSArray *)otherCards;


@end
