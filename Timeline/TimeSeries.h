//
//  TimeSeries.h
//  Timeline
//
//  Created by Ankush Agrawal on 2/21/15.
//  Copyright (c) 2015 Ankush Agrawal. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TimeSeries : NSObject {
    
}

@property (nonatomic, assign) NSDictionary* eventDict;


- (id) initWithEvents:(NSArray*)eventArray;

@end

