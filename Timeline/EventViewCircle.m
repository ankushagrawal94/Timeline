//
//  EventViewCircle.m
//  Timeline
//
//  Created by Ankush Agrawal on 2/21/15.
//  Copyright (c) 2015 Ankush Agrawal. All rights reserved.
//

#import "EventViewCircle.h"

@implementation EventViewCircle

- (id)init {
    if ((self = [super init])) {
        //    [self commonInit];
    }
    self.circleCenter = CGPointZero;
    self.circleRadius = 25;
    return self;
}

- (id)initWithFrame:(CGRect)frame {
    if ((self = [super initWithFrame:frame])) {
        //    [self commonInit];
    }
    self.circleRadius = 25;
    self.circleCenter = CGPointZero;
    return self;
}

- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    
    //NSInteger tmp = [self.endTime doubleValue] - [self.startTime doubleValue];
    //NSNumber * tmp2 = [NSNumber numberWithInteger: tmp];
    //NSLog(tmp2);
    
    
    if ([self.durationNum isEqualToValue:@10]){
        if ([self.stageNum isEqualToNumber:@1]){
            [VTimelineCircle drawLeft_10WithArtistImage:[UIImage imageNamed:@"blueish-o.jpg"] imageY:60 imageSize:116 timeText:@"7:30" artistName:@"Dada Life"];
            self.circleCenter = CGPointMake(107, 95);
        }
        else{
            [VTimelineCircle drawRight_10WithArtistImage:[UIImage imageNamed:@"blueish-o.jpg"] imageY:60 imageSize:116 timeText:@"7:30" artistName:@"Dada Life"];
        }
    }
    
    if ([self.durationNum isEqualToValue:@30]){
        if ([self.stageNum isEqualToNumber:@1]){
            [VTimelineCircle drawLeft_30WithArtistImage:[UIImage imageNamed:@"blueish-o.jpg"] imageY:60 imageSize:116 timeText:@"7:45" artistName:@"Kanye West"];
        }
        else{
            [VTimelineCircle drawRight_30WithArtistImage:[UIImage imageNamed:@"blueish-o.jpg"] imageY:60 imageSize:116 timeText:@"7:30" artistName:@"Kanye West"];
            
        }
    }
    
    if ([self.durationNum isEqualToValue:@45]){
        if ([self.stageNum isEqualToNumber:@1]){
            [VTimelineCircle drawLeft_45WithArtistImage:[UIImage imageNamed:@"blueish-o.jpg"] imageY:60 imageSize:116 timeText:@"7:30" artistName:@"Dada Life3.5"];
        }
        else{
            [VTimelineCircle drawRight_45WithArtistImage:[UIImage imageNamed:@"blueish-o.jpg"] imageY:60 imageSize:116 timeText:@"7:30" artistName:@"Dada Life 4"];
            
        }
    }
    
    if ([self.durationNum isEqualToValue:@60]){
        if ([self.stageNum isEqualToNumber:@1]){
            [VTimelineCircle drawLeft_1WithArtistImage:[UIImage imageNamed:@"blueish-o.jpg"] imageY:60 imageSize:116 timeText:@"7:30" artistName:@"Dada Life4.5"];
        }
        else{
            [VTimelineCircle drawRight_1WithArtistImage:[UIImage imageNamed:@"blueish-o.jpg"] imageY:60 imageSize:116 timeText:@"7:30" artistName:@"Dada Life 5"];
            
        }
    }
    
    if ([self.durationNum isEqualToValue:@90]){
        if ([self.stageNum isEqualToNumber:@1]){
            [VTimelineCircle drawLeft_15WithArtistImage:[UIImage imageNamed:@"blueish-o.jpg"] imageY:60 imageSize:116 timeText:@"7:30" artistName:@"Dada Life 5.5"];
        }
        else{
            [VTimelineCircle drawRight_15WithArtistImage:[UIImage imageNamed:@"blueish-o.jpg"] imageY:60 imageSize:116 timeText:@"7:30" artistName:@"Dada Life 6"];
            
        }
    }
    
    
    
    
}

@end
