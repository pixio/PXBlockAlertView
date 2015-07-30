//
//  PXViewController.m
//  PXBlockAlertView
//
//  Created by Daniel Blakemore on 05/04/2015.
//  Copyright (c) 2014 Daniel Blakemore. All rights reserved.
//

#import "PXViewController.h"

#import <PXBlockAlertView/PXBlockAlertView.h>

@interface PXViewController ()

@end

@implementation PXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [self showAlert];
    });
}

- (void)showAlert
{
    [PXBlockAlertView showWithTitle:@"So Simple" message:@"I can't believe it's not a pain." acceptButtonTitle:@"Show Me Another" block:^(PXBlockAlertView *sender) {
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self showAlert];
        });
    } cancelButtonTitle:@"Awesome" block:^(PXBlockAlertView *sender) {
        // do nothing
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
