//
//  ViewController.m
//  PlayProgress
//
//  Created by Pluto Y on 23/04/2017.
//  Copyright © 2017 com.pluto-y. All rights reserved.
//

#import "ViewController.h"
#import "PYSmileProgress.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet PYSmileProgress *smileProgress;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _smileProgress.backgroundColor = [UIColor redColor];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [_smileProgress startAnimation];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
