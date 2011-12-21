//
//  Dealer.h
//  tracker_poker
//
//  Created by Allan Davis on 12/20/11.
//  Copyright (c) 2011 CajunCode. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dealer : NSObject

@property (copy, nonatomic)NSString * vote;

+ (id)sharedInstance;
@end
