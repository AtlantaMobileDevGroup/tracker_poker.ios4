//
//  CardViewController.m
//  tracker_poker
//
//  Created by Allan Davis on 12/20/11.
//  Copyright (c) 2011 CajunCode. All rights reserved.
//

#import "CardViewController.h"
@interface CardViewController()
@property (readonly) Dealer* dealer;
@end
@implementation CardViewController
- (Dealer *) dealer{
    return [Dealer sharedInstance];
}
@synthesize result;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSLog(@"Card load %@", self.dealer.vote);
    result.text = self.dealer.vote;

}

- (void)viewDidUnload
{
    [self setResult:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)closePressed:(UIButton *)sender {
    [self dismissModalViewControllerAnimated:YES];
}
- (void)dealloc {
    [result release];
    [super dealloc];
}
@end
