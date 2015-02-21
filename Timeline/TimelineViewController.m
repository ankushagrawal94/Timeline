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
    NSDictionary *dict2 = @{@"artist": @"The Colorist 2", @"start": [[NSDate alloc] initWithTimeIntervalSince1970:1424569779], @"end": [[NSDate alloc] initWithTimeIntervalSince1970:1424570878], @"stage": @2, @"image": [UIImage imageNamed:@"blueish.jpg"]};/*
    NSDictionary *dict3 = @{@"artist": @"The Colorist 3", @"start": [[NSDate alloc] initWithTimeIntervalSince1970:1424578778], @"end": [[NSDate alloc] initWithTimeIntervalSince1970:1424579778], @"stage": @1, @"image": [UIImage imageNamed:@"heartbeat.jpg"]};
    NSDictionary *dict4 = @{@"artist": @"The Colorist 4", @"start": [[NSDate alloc] initWithTimeIntervalSince1970:1424589779], @"end": [[NSDate alloc] initWithTimeIntervalSince1970:1424580878], @"stage": @2, @"image": [UIImage imageNamed:@"hexagon.jpg"]};*/
    
    TimeSeries *ts = [[TimeSeries alloc] initWithEvents:@[dict1, dict2]];
    NSArray *keys = [ts.eventDict allKeys];
    for (NSString *key in keys){
        if (ts.eventDict[key]){
            EventView *event;
            NSLog(@"%@", [ts.eventDict[key] objectForKey:@"stage"]);
            if ([[ts.eventDict[key] objectForKey:@"stage"]  integerValue] == 1) {
                event = [[EventView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width/2, self.view.frame.size.height)];
            }
            else {
                event = [[EventView alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2 - 19, 0, self.view.frame.size.width/2 + 19, self.view.frame.size.height)];
            }
            event.stageNum = (NSNumber*) ts.eventDict[key][@"stage"];
            event.backgroundColor = [UIColor clearColor];
            [self.view addSubview:event];
        }
    }
    
    //ButtonView *button = [[ButtonView alloc] initWithFrame:CGRectMake(self.view.frame.size.width / 2, 0, self.view.frame.size.width / 2, 180)];
    //[button addTarget:self action:@selector(buttonTap:) forControlEvents:UIControlEventTouchUpInside];
    //[self.view addSubview:button];
    
    //EventView *event = [[EventView alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2, 0, self.view.frame.size.width/2, self.view.frame.size.height)];
    //event.backgroundColor = [UIColor clearColor];
    //[self.view addSubview:event];
}

-(void) buttonTap: (id) sender {
    NSLog(@"print");
}
@end
