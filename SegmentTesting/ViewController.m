//
//  ViewController.m
//  SegmentTesting
//
//  Created by Hamming, Tom on 6/26/19.
//  Copyright © 2019 Example. All rights reserved.
//

#import "ViewController.h"
#import "SegmentViewController.h"

@interface ViewController ()
@property UIUserInterfaceStyle nextStyle;
@property (strong) UIButton *changeButton;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.changeButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.changeButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:self.changeButton];
    [self.changeButton.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor constant:20].active = YES;
    [self.changeButton.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [self.changeButton setTitle:@"Set Light" forState:UIControlStateNormal];
    [self.changeButton addTarget:self action:@selector(onChangeAppearance:) forControlEvents:UIControlEventTouchUpInside];
    self.nextStyle = UIUserInterfaceStyleLight;
    
    UIButton *presentButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    presentButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:presentButton];
    [presentButton.topAnchor constraintEqualToAnchor:self.changeButton.bottomAnchor constant:20].active = YES;
    [presentButton.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [presentButton addTarget:self action:@selector(onPresent:) forControlEvents:UIControlEventTouchUpInside];
    [presentButton setTitle:@"Open View" forState:UIControlStateNormal];
}

-(void)onChangeAppearance:(id)sender
{
    UITraitCollection *traitCollection = [UITraitCollection traitCollectionWithUserInterfaceStyle:UIUserInterfaceStyleLight];
    [[UISegmentedControl appearanceForTraitCollection:traitCollection] setOverrideUserInterfaceStyle:self.nextStyle];
    self.nextStyle = (self.nextStyle == UIUserInterfaceStyleLight ? UIUserInterfaceStyleDark : UIUserInterfaceStyleLight);
    NSString *name = (self.nextStyle == UIUserInterfaceStyleLight ? @"Light" : @"Dark");
    [self.changeButton setTitle:[NSString stringWithFormat:@"Set %@", name] forState:UIControlStateNormal];
}

-(void)onPresent:(id)sender
{
    SegmentViewController *vc = [[SegmentViewController alloc] init];
    [self presentViewController:vc animated:YES completion:nil];
}


@end
