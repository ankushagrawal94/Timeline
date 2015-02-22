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
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.width)];
    scrollView.contentSize = CGSizeMake(self.view.frame.size.width, self.view.frame.size.height * 3);
    self.view = scrollView;
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"red-o.jpg"]];
    
    NSDictionary *dict1 = @{@"artist": @"The Colorist", @"start": [[NSDate alloc] initWithTimeIntervalSince1970:1424505600], @"end": [[NSDate alloc] initWithTimeIntervalSince1970:1424506200], @"stage": @1, @"image": [UIImage imageNamed:@"blue-o.jpg"], @"duration": @10};
    NSDictionary *dict2 = @{@"artist": @"The Colorist 2", @"start": [[NSDate alloc] initWithTimeIntervalSince1970:1424506200], @"end": [[NSDate alloc] initWithTimeIntervalSince1970:1424508000], @"stage": @1, @"image": [UIImage imageNamed:@"blueish.jpg"], @"duration": @30};
    NSDictionary *dict3 = @{@"artist": @"The Colorist 3", @"start": [[NSDate alloc] initWithTimeIntervalSince1970:1424508000], @"end": [[NSDate alloc] initWithTimeIntervalSince1970:1424508600], @"stage": @2, @"image": [UIImage imageNamed:@"heartbeat.jpg"], @"duration": @10};
    NSDictionary *dict4 = @{@"artist": @"The Colorist 4", @"start": [[NSDate alloc] initWithTimeIntervalSince1970:1424508600], @"end": [[NSDate alloc] initWithTimeIntervalSince1970:1424514000], @"stage": @2, @"image": [UIImage imageNamed:@"hexagon.jpg"], @"duration": @90};
    
    TimeSeries *ts = [[TimeSeries alloc] initWithEvents:@[dict1, dict2, dict3, dict4]];
    NSArray *keys = [ts.eventDict allKeys];
    for (NSString *key in keys){
        if (ts.eventDict[key]){
            EventView *event;
            CGFloat height = [key integerValue] * (1.0/4.5);
            if ([[ts.eventDict[key] objectForKey:@"stage"]  integerValue] == 1) {
                event = [[EventView alloc] initWithFrame:CGRectMake(0, height, self.view.frame.size.width/2 + 19, self.view.frame.size.height)];
            }
            else {
                event = [[EventView alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2 - 19, height, self.view.frame.size.width/2 + 19, self.view.frame.size.height)];
            }
            event.stageNum = (NSNumber*) ts.eventDict[key][@"stage"];
            event.durationNum = (NSNumber*) ts.eventDict[key][@"duration"];
            /*
            NSDate *aDate = (NSDate*) ts.eventDict[key][@"start"];
            NSNumber *num = [NSNumber numberWithDouble:[aDate timeIntervalSinceReferenceDate]];
            event.startTime = num;
            
            NSDate *bDate = (NSDate*) ts.eventDict[key][@"end"];
            NSNumber *num2 = [NSNumber numberWithDouble:[bDate timeIntervalSinceReferenceDate]];
            event.startTime = num2;*/
            
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
