//
//  ViewController.m
//  dono
//
//  Created by ric on 31/08/2016.
//  Copyright © 2016 rminfo. All rights reserved.
//

#import "ViewController.h"
#import "PiwikTracker/PiwikTracker.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear {
    [[PiwikTracker sharedInstance] sendViews:@"blank", @"splash", self.title, nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
