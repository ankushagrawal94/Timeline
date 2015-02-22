//
//  EventViewBase.h
//  Timeline
//
//  Created by Ankush Agrawal on 2/22/15.
//  Copyright (c) 2015 Ankush Agrawal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EventViewBase : UIView
@property (nonatomic, strong) NSNumber *stageNum;
//@property (nonatomic, strong) NSNumber *startTime;
@property (nonatomic, strong) NSNumber *durationNum;
@property (nonatomic, strong) NSDictionary *event;
@end
