//
//  ButtonView.m
//  sundial
//
//  Created by Ankush Agrawal on 2/15/15.
//  Copyright (c) 2015 Ankush Agrawal. All rights reserved.
//

#import "ButtonView.h"

@implementation ButtonView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    [VTimeline drawLeft_1WithArtistImage:[UIImage imageNamed:@"blueish-o.jpg"] imageY:60 imageSize:116 timeText:@"7:30" artistName:@"Dada Life"];


}


@end
