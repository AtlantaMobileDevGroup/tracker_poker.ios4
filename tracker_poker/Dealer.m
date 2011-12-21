//
//  Dealer.m
//  tracker_poker
//
//  Created by Allan Davis on 12/20/11.
//  Copyright (c) 2011 CajunCode. All rights reserved.
//

#import "Dealer.h"


@implementation Dealer
@synthesize vote = _vote;

static id _sharedObject = nil;

+ (id)sharedInstance{
    if (! _sharedObject)
        _sharedObject = [[self alloc] init]; 
    return _sharedObject;
}


// *** Not Used with ARC ***

//+ (id)allocWithZone:(NSZone *)zone
//{
//    return [[self sharedInstance] retain];
//}
//
//- (id)copyWithZone:(NSZone *)zone
//{
//    return self;
//}
//
//- (id)retain
//{
//    return self;
//}
//
//- (NSUInteger)retainCount
//{
//    return NSUIntegerMax;  //denotes an object that cannot be released
//}
//
//- (oneway void)release
//{
//    //do nothing
//}
//
//- (id)autorelease
//{
//    return self;
//}


@end
