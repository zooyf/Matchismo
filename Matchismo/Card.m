//
//  Card.m
//  Matchismo
//
//  Created by YesterdayFinder on 16/3/17.
//  Copyright © 2016年 CS193p. All rights reserved.
//

#import "Card.h"

@interface Card ()



@end

@implementation Card

- (int)match:(NSArray *)otherCards {
    
    int score = 0;
    
    for (Card *card in otherCards) {
        if ([self.contents isEqualToString:card.contents]) {
            score = 1;
        }
    }
    
    return score;
}



@end
