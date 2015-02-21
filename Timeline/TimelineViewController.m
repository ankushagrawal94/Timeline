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
    
    NSDictionary *dict1 = @{@"artist": @"The Colorist", @"start": [[NSDate alloc] initWithTimeIntervalSince1970:1424568778], @"end": [[NSDate alloc] initWithTimeIntervalSince1970:1424569778]};
    NSDictionary *dict2 = @{@"artist": @"The Colorist 2", @"start": [[NSDate alloc] initWithTimeIntervalSince1970:1424569779], @"end": [[NSDate alloc] initWithTimeIntervalSince1970:1424570878]};
    
    TimeSeries *ts = [[TimeSeries alloc] initWithEvents:@[dict1, dict2]];
    
    //EventView *event = [[EventView alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2, 0, self.view.frame.size.width/2, self.view.frame.size.height)];
    ButtonView *button = [[ButtonView alloc] initWithFrame:CGRectMake(self.view.frame.size.width / 2, 0, self.view.frame.size.width / 2, 180)];
    [button addTarget:self action:@selector(buttonTap:) forControlEvents:UIControlEventTouchUpInside];
    //[self.view addSubview:event];
    [self.view addSubview:button];
}

-(void) buttonTap: (id) sender {
    NSLog(@"print");
}
@end
