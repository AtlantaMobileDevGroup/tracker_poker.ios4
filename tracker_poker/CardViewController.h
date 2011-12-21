//
//  CardViewController.h
//  tracker_poker
//
//  Created by Allan Davis on 12/20/11.
//  Copyright (c) 2011 CajunCode. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Dealer.h"

@interface CardViewController : UIViewController
- (IBAction)closePressed:(UIButton *)sender;
@property (retain, nonatomic) IBOutlet UILabel *result;

@end
