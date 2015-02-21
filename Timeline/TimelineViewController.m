//
//  TimelineViewController.m
//  Timeline
//
//  Created by Ankush Agrawal on 2/21/15.
//  Copyright (c) 2015 Ankush Agrawal. All rights reserved.
//

#import "TimelineViewController.h"

@interface TimelineViewController ()

@end

@implementation TimelineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.width)];
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"red-o.jpg"]];
}


@end
