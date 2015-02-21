//
//  TimeSeries.m
//  Timeline
//
//  Created by Ankush Agrawal on 2/21/15.
//  Copyright (c) 2015 Ankush Agrawal. All rights reserved.
//

#import "TimeSeries.h"

@implementation TimeSeries

- (id) initWithEvents:(NSArray*)eventArray {
    
    NSDictionary *dict1 = @{@"artist": @"The Colorist", @"start": [[NSDate alloc] initWithTimeIntervalSince1970:123456789], @"end": [[NSDate alloc] initWithTimeIntervalSince1970:223456789]};
    NSArray *test = @[dict1]; //replace all eventArray with test
    
    NSDate * startDate = [[NSDate alloc] initWithTimeIntervalSince1970:INTMAX_MAX];
    NSDate * endDate = [[NSDate alloc] initWithTimeIntervalSince1970:0];
    
    for (int i = 0; i < eventArray.count; i++) {
        if (eventArray[i][@"start"] < startDate) {
            startDate = test[i][@"start"];
        }
        if (eventArray[i][@"end"] > endDate) {
            endDate = test[i][@"end"];
        }
    }
    
    NSTimeInterval distanceBetween = [startDate timeIntervalSinceDate:endDate];
    NSInteger minutesBetween = distanceBetween / 60;
    
    NSMutableArray * events = [[NSMutableArray alloc] initWithCapacity:minutesBetween]; //Each index value represents a minute
    
    for (int i = 0; i < events.count; i++) {
        if (test[i][@"start"]/60  == i) {
            events[i] = test[i];
        }
        else {
            events[i] = nil;
        }
    }
    
    return self;
}

@end


