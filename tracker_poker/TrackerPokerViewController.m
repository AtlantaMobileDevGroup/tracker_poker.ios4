//
//  TrackerPokerViewController.m
//  tracker_poker
//
//  Created by Allan Davis on 12/20/11.
//  Copyright (c) 2011 CajunCode. All rights reserved.
//

#import "TrackerPokerViewController.h"
@interface TrackerPokerViewController()
@property (readonly) Dealer* dealer;
@end

@implementation TrackerPokerViewController
@synthesize display;

- (Dealer *) dealer{
  return [Dealer sharedInstance];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setDisplay:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)dealloc {
    [display release];
    [super dealloc];
}
- (IBAction)cardPressed:(UIButton *)sender {
    NSLog(@"Sender Text %@", sender.titleLabel.text);
    self.dealer.vote = sender.titleLabel.text;
    NSLog(@"Vote Pressed %@", self.dealer.vote);
    UIViewController* cardViewController = [[CardViewController alloc] initWithNibName:nil bundle:[NSBundle mainBundle]];
    [self presentModalViewController:cardViewController animated:YES];

}
@end
