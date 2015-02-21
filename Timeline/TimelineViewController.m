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
    NSDictionary *dict1 = @{@"artist": @"The Colorist", @"start": [[NSDate alloc] initWithTimeIntervalSince1970:1424568778], @"end": [[NSDate alloc] initWithTimeIntervalSince1970:1424569778], @"stage": @1, @"image": [UIImage imageNamed:@"blue-o.jpg"]};
    NSDictionary *dict2 = @{@"artist": @"The Colorist 2", @"start": [[NSDate alloc] initWithTimeIntervalSince1970:1424569779], @"end": [[NSDate alloc] initWithTimeIntervalSince1970:1424570878], @"stage": @2, @"image": [UIImage imageNamed:@"blueish.jpg"]};
    
    TimeSeries *ts = [[TimeSeries alloc] initWithEvents:@[dict1, dict2]];
    if (ts){
        NSLog(@"asdfasd");
    }
    
    for (NSDictionary* dict in ts.eventDict){
        if (dict){
            NSLog(@"YASS");
        }

    }
    
    //ButtonView *button = [[ButtonView alloc] initWithFrame:CGRectMake(self.view.frame.size.width / 2, 0, self.view.frame.size.width / 2, 180)];
    //[button addTarget:self action:@selector(buttonTap:) forControlEvents:UIControlEventTouchUpInside];
    //[self.view addSubview:button];
    
    EventView *event = [[EventView alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2, 0, self.view.frame.size.width/2, self.view.frame.size.height)];
    event.backgroundColor = [UIColor clearColor];
    [self.view addSubview:event];
}

-(void) buttonTap: (id) sender {
    NSLog(@"print");
}
@end
