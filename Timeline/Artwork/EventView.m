//
//  EventView.m
//  Timeline
//
//  Created by Ankush Agrawal on 2/21/15.
//  Copyright (c) 2015 Ankush Agrawal. All rights reserved.
//

#import "EventView.h"

@implementation EventView
- (id)init {
    if ((self = [super init])) {
    //    [self commonInit];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame {
    if ((self = [super initWithFrame:frame])) {
    //    [self commonInit];
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
    if ([self.durationNum isEqualToValue:@10]){
        if ([self.stageNum isEqualToNumber:@1]){
            [VTimeline drawLeft_10WithArtistImage:[UIImage imageNamed:@"blueish-o.jpg"] imageY:60 imageSize:116 timeText:@"7:30" artistName:@"Dada Life"];
        }
        else{
            [VTimeline drawRight_10WithArtistImage:[UIImage imageNamed:@"blueish-o.jpg"] imageY:60 imageSize:116 timeText:@"7:30" artistName:@"Dada Life NULL"];
            
        }
    }
    
    if ([self.durationNum isEqualToValue:@30]){
        if ([self.stageNum isEqualToNumber:@1]){
            [VTimeline drawLeft_30WithArtistImage:[UIImage imageNamed:@"blueish-o.jpg"] imageY:60 imageSize:116 timeText:@"7:45" artistName:@"Kanye West"];
        }
        else{
            [VTimeline drawRight_30WithArtistImage:[UIImage imageNamed:@"blueish-o.jpg"] imageY:60 imageSize:116 timeText:@"7:30" artistName:@"Kanye West"];
            
        }
    }
    
    if ([self.durationNum isEqualToValue:@45]){
        if ([self.stageNum isEqualToNumber:@1]){
            [VTimeline drawLeft_45WithArtistImage:[UIImage imageNamed:@"blueish-o.jpg"] imageY:60 imageSize:116 timeText:@"7:30" artistName:@"Dada Life3.5"];
        }
        else{
            [VTimeline drawRight_45WithArtistImage:[UIImage imageNamed:@"blueish-o.jpg"] imageY:60 imageSize:116 timeText:@"7:30" artistName:@"Dada Life 4"];
            
        }
    }
    
    if ([self.durationNum isEqualToValue:@60]){
        if ([self.stageNum isEqualToNumber:@1]){
            [VTimeline drawLeft_1WithArtistImage:[UIImage imageNamed:@"blueish-o.jpg"] imageY:60 imageSize:116 timeText:@"7:30" artistName:@"Dada Life4.5"];
        }
        else{
            [VTimeline drawRight_1WithArtistImage:[UIImage imageNamed:@"blueish-o.jpg"] imageY:60 imageSize:116 timeText:@"7:30" artistName:@"Dada Life 5"];
            
        }
    }
    
    if ([self.durationNum isEqualToValue:@90]){
        if ([self.stageNum isEqualToNumber:@1]){
            [VTimeline drawLeft_15WithArtistImage:[UIImage imageNamed:@"blueish-o.jpg"] imageY:60 imageSize:116 timeText:@"7:30" artistName:@"Dada Life 5.5"];
        }
        else{
            [VTimeline drawRight_15WithArtistImage:[UIImage imageNamed:@"blueish-o.jpg"] imageY:60 imageSize:116 timeText:@"7:30" artistName:@"Dada Life 6"];
            
        }
    }
    
    
    
    
}

@end
