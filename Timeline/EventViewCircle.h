//
//  EventView.h
//  Timeline
//
//  Created by Ankush Agrawal on 2/21/15.
//  Copyright (c) 2015 Ankush Agrawal. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VTimeline.h"
#import "VTimelineCircle.h"
#import "EventViewBase.h"

@interface EventViewCircle : EventViewBase
@property (nonatomic, assign) CGPoint circleCenter;
@property (nonatomic, assign) CGFloat circleRadius;
@end
