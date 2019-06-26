//
//  SegmentViewController.m
//  SegmentTesting
//
//  Created by Hamming, Tom on 6/26/19.
//  Copyright © 2019 Example. All rights reserved.
//

#import "SegmentViewController.h"

@interface SegmentViewController ()

@end

@implementation SegmentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UISegmentedControl *control = [[UISegmentedControl alloc] initWithItems:@[@"One", @"Two", @"Three"]];
    [self.view addSubview:control];
    control.selectedSegmentIndex = 0;
    control.translatesAutoresizingMaskIntoConstraints = NO;
    [control.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [control.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor].active = YES;
}

@end
