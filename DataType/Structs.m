//
//  Structs.m
//  DataType
//
//  Created by Admin on 28/05/17.
//  Copyright © 2017 Artem Berezovsky. All rights reserved.
//

#import "Structs.h"

@implementation Structs

- (CGPoint) addPointRandom
{
    CGPoint pointTemp = CGPointMake(arc4random_uniform(7), arc4random_uniform(7));
    
    return pointTemp;
}

@end
