//
//  TrackerPokerViewController.h
//  tracker_poker
//
//  Created by Allan Davis on 12/20/11.
//  Copyright (c) 2011 CajunCode. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Dealer.h"
#import "CardViewController.h"

@interface TrackerPokerViewController : UIViewController

@property (retain, nonatomic) IBOutlet UILabel *display;
- (IBAction)cardPressed:(UIButton * )sender;

@end
