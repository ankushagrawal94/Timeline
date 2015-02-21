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
    NSDate * startDate = [[NSDate alloc] initWithTimeIntervalSince1970:INTMAX_MAX];
    NSDate * endDate = [[NSDate alloc] initWithTimeIntervalSince1970:0];
    
    for (int i = 0; i < eventArray.count; i++) {
        if (eventArray[i][@"start"] < startDate) {
            startDate = eventArray[i][@"start"];
        }
        if (eventArray[i][@"end"] > endDate) {
            endDate = eventArray[i][@"end"];
        }
    }
    
    NSTimeInterval distanceBetween = [startDate timeIntervalSinceDate:endDate];
    NSInteger minutesBetween = distanceBetween / 60;
    
    /*NSMutableArray * events = [[NSMutableArray alloc] initWithCapacity:minutesBetween];
    for (int i = 0; i < events.count; i++) {
        if (eventArray[i][@"start"] == events[i].) {
            
        }
    }*/
    return self;
}

@end