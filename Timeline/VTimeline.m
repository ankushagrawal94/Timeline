//
//  VTimeline.m
//  TreeHacks
//
//  Created by Ankush Agrawal on 2/21/15.
//  Copyright (c) 2015 TreeHacks. All rights reserved.
//
//  Generated by PaintCode (www.paintcodeapp.com)
//

#import "VTimeline.h"


@implementation VTimeline

#pragma mark Initialization

+ (void)initialize
{
}

#pragma mark Drawing Methods

+ (void)drawRight_1WithArtistImage: (UIImage*)artistImage imageY: (CGFloat)imageY imageSize: (CGFloat)imageSize timeText: (NSString*)timeText artistName: (NSString*)artistName
{
    //// General Declarations
    CGContextRef context = UIGraphicsGetCurrentContext();

    //// Color Declarations
    UIColor* color2 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
    UIColor* color6 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 0];

    //// Variable Declarations
    CGFloat timeHeight = 11;
    CGFloat timeWidth = 24;
    CGFloat timeX = 6;
    CGFloat lineX = timeX + timeWidth;
    CGFloat imageX = 77;
    CGFloat lineWidth = imageX - lineX;
    CGFloat timeY = imageSize / 2.0 - timeHeight / 2.0 + imageY;
    CGFloat lineY = imageSize / 2.0 + imageY;
    CGFloat textY = imageY + imageSize;

    //// Rectangle 4 Drawing
    UIBezierPath* rectangle4Path = [UIBezierPath bezierPathWithRect: CGRectMake((lineX + 8), (lineY - 74), (lineWidth - 14), 1)];
    [color2 setFill];
    [rectangle4Path fill];


    //// Rectangle 2 Drawing
    CGRect rectangle2Rect = CGRectMake((timeX - 6), (timeY - 78), (timeWidth + 14), (timeHeight + 14.5));
    UIBezierPath* rectangle2Path = [UIBezierPath bezierPathWithRoundedRect: rectangle2Rect cornerRadius: 12.75];
    [color6 setFill];
    [rectangle2Path fill];
    NSMutableParagraphStyle* rectangle2Style = NSMutableParagraphStyle.defaultParagraphStyle.mutableCopy;
    rectangle2Style.alignment = NSTextAlignmentCenter;

    NSDictionary* rectangle2FontAttributes = @{NSFontAttributeName: [UIFont fontWithName: @"Helvetica" size: 12], NSForegroundColorAttributeName: UIColor.whiteColor, NSParagraphStyleAttributeName: rectangle2Style};

    CGFloat rectangle2TextHeight = [timeText boundingRectWithSize: CGSizeMake(rectangle2Rect.size.width, INFINITY)  options: NSStringDrawingUsesLineFragmentOrigin attributes: rectangle2FontAttributes context: nil].size.height;
    CGContextSaveGState(context);
    CGContextClipToRect(context, rectangle2Rect);
    [timeText drawInRect: CGRectMake(CGRectGetMinX(rectangle2Rect), CGRectGetMinY(rectangle2Rect) + (CGRectGetHeight(rectangle2Rect) - rectangle2TextHeight) / 2, CGRectGetWidth(rectangle2Rect), rectangle2TextHeight) withAttributes: rectangle2FontAttributes];
    CGContextRestoreGState(context);


    //// Rectangle Drawing
    CGRect rectangleRect = CGRectMake((lineX + 22), (lineY - 74), (lineWidth + 102.5), 180);
    UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRect: rectangleRect];
    CGContextSaveGState(context);
    [rectanglePath addClip];
    CGContextScaleCTM(context, 1.0, -1.0);
    CGContextDrawTiledImage(context, CGRectMake(CGRectGetMinX(rectangleRect), -CGRectGetMinY(rectangleRect), artistImage.size.width, artistImage.size.height), artistImage.CGImage);
    CGContextRestoreGState(context);


    //// Text Drawing
    CGRect textRect = CGRectMake(52, (textY + 31), 147, 17);
    NSMutableParagraphStyle* textStyle = NSMutableParagraphStyle.defaultParagraphStyle.mutableCopy;
    textStyle.alignment = NSTextAlignmentRight;

    NSDictionary* textFontAttributes = @{NSFontAttributeName: [UIFont systemFontOfSize: UIFont.labelFontSize], NSForegroundColorAttributeName: UIColor.darkGrayColor, NSParagraphStyleAttributeName: textStyle};

    CGFloat textTextHeight = [artistName boundingRectWithSize: CGSizeMake(textRect.size.width, INFINITY)  options: NSStringDrawingUsesLineFragmentOrigin attributes: textFontAttributes context: nil].size.height;
    CGContextSaveGState(context);
    CGContextClipToRect(context, textRect);
    [artistName drawInRect: CGRectMake(CGRectGetMinX(textRect), CGRectGetMinY(textRect) + (CGRectGetHeight(textRect) - textTextHeight) / 2, CGRectGetWidth(textRect), textTextHeight) withAttributes: textFontAttributes];
    CGContextRestoreGState(context);
}

+ (void)drawLeft_1WithArtistImage: (UIImage*)artistImage imageY: (CGFloat)imageY imageSize: (CGFloat)imageSize timeText: (NSString*)timeText artistName: (NSString*)artistName
{
    //// General Declarations
    CGContextRef context = UIGraphicsGetCurrentContext();

    //// Color Declarations
    UIColor* color2 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
    UIColor* color6 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 0];

    //// Variable Declarations
    CGFloat timeHeight = 11;
    CGFloat timeWidth = 24;
    CGFloat timeX = 6;
    CGFloat lineX = timeX + timeWidth;
    CGFloat imageX = 77;
    CGFloat lineWidth = imageX - lineX;
    CGFloat timeY = imageSize / 2.0 - timeHeight / 2.0 + imageY;
    CGFloat lineY = imageSize / 2.0 + imageY;
    CGFloat textY = imageY + imageSize;

    //// Rectangle 4 Drawing
    UIBezierPath* rectangle4Path = [UIBezierPath bezierPathWithRect: CGRectMake((lineX + 105), (lineY - 74), (lineWidth - 14), 1)];
    [color2 setFill];
    [rectangle4Path fill];


    //// Rectangle 2 Drawing
    CGRect rectangle2Rect = CGRectMake((timeX + 162), (timeY - 78), (timeWidth + 14), (timeHeight + 14.5));
    UIBezierPath* rectangle2Path = [UIBezierPath bezierPathWithRoundedRect: rectangle2Rect cornerRadius: 12.75];
    [color6 setFill];
    [rectangle2Path fill];
    NSMutableParagraphStyle* rectangle2Style = NSMutableParagraphStyle.defaultParagraphStyle.mutableCopy;
    rectangle2Style.alignment = NSTextAlignmentCenter;

    NSDictionary* rectangle2FontAttributes = @{NSFontAttributeName: [UIFont fontWithName: @"Helvetica" size: 12], NSForegroundColorAttributeName: UIColor.whiteColor, NSParagraphStyleAttributeName: rectangle2Style};

    CGFloat rectangle2TextHeight = [timeText boundingRectWithSize: CGSizeMake(rectangle2Rect.size.width, INFINITY)  options: NSStringDrawingUsesLineFragmentOrigin attributes: rectangle2FontAttributes context: nil].size.height;
    CGContextSaveGState(context);
    CGContextClipToRect(context, rectangle2Rect);
    [timeText drawInRect: CGRectMake(CGRectGetMinX(rectangle2Rect), CGRectGetMinY(rectangle2Rect) + (CGRectGetHeight(rectangle2Rect) - rectangle2TextHeight) / 2, CGRectGetWidth(rectangle2Rect), rectangle2TextHeight) withAttributes: rectangle2FontAttributes];
    CGContextRestoreGState(context);


    //// Rectangle Drawing
    CGRect rectangleRect = CGRectMake((lineX - 24), (lineY - 74), (lineWidth + 102.5), 180);
    UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRect: rectangleRect];
    CGContextSaveGState(context);
    [rectanglePath addClip];
    CGContextScaleCTM(context, 1.0, -1.0);
    CGContextDrawTiledImage(context, CGRectMake(CGRectGetMinX(rectangleRect), -CGRectGetMinY(rectangleRect), artistImage.size.width, artistImage.size.height), artistImage.CGImage);
    CGContextRestoreGState(context);


    //// Text Drawing
    CGRect textRect = CGRectMake(8, (textY + 31), 147, 17);
    NSMutableParagraphStyle* textStyle = NSMutableParagraphStyle.defaultParagraphStyle.mutableCopy;
    textStyle.alignment = NSTextAlignmentLeft;

    NSDictionary* textFontAttributes = @{NSFontAttributeName: [UIFont systemFontOfSize: UIFont.labelFontSize], NSForegroundColorAttributeName: UIColor.darkGrayColor, NSParagraphStyleAttributeName: textStyle};

    CGFloat textTextHeight = [artistName boundingRectWithSize: CGSizeMake(textRect.size.width, INFINITY)  options: NSStringDrawingUsesLineFragmentOrigin attributes: textFontAttributes context: nil].size.height;
    CGContextSaveGState(context);
    CGContextClipToRect(context, textRect);
    [artistName drawInRect: CGRectMake(CGRectGetMinX(textRect), CGRectGetMinY(textRect) + (CGRectGetHeight(textRect) - textTextHeight) / 2, CGRectGetWidth(textRect), textTextHeight) withAttributes: textFontAttributes];
    CGContextRestoreGState(context);
}

+ (void)drawLeft_10WithArtistImage: (UIImage*)artistImage imageY: (CGFloat)imageY imageSize: (CGFloat)imageSize timeText: (NSString*)timeText artistName: (NSString*)artistName
{
    //// General Declarations
    CGContextRef context = UIGraphicsGetCurrentContext();

    //// Color Declarations
    UIColor* color2 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
    UIColor* color6 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 0];

    //// Variable Declarations
    CGFloat timeHeight = 11;
    CGFloat timeWidth = 24;
    CGFloat timeX = 6;
    CGFloat lineX = timeX + timeWidth;
    CGFloat imageX = 77;
    CGFloat lineWidth = imageX - lineX;
    CGFloat timeY = imageSize / 2.0 - timeHeight / 2.0 + imageY;
    CGFloat lineY = imageSize / 2.0 + imageY;
    CGFloat textY = imageY + imageSize;

    //// Rectangle 4 Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, (lineX + 68), (lineY - 74));

    UIBezierPath* rectangle4Path = [UIBezierPath bezierPathWithRect: CGRectMake(37, 0, (lineWidth - 14), 1)];
    [color2 setFill];
    [rectangle4Path fill];

    CGContextRestoreGState(context);


    //// Rectangle 2 Drawing
    CGRect rectangle2Rect = CGRectMake((timeX + 162), (timeY - 78), (timeWidth + 14), (timeHeight + 14.5));
    UIBezierPath* rectangle2Path = [UIBezierPath bezierPathWithRoundedRect: rectangle2Rect cornerRadius: 12.75];
    [color6 setFill];
    [rectangle2Path fill];
    NSMutableParagraphStyle* rectangle2Style = NSMutableParagraphStyle.defaultParagraphStyle.mutableCopy;
    rectangle2Style.alignment = NSTextAlignmentCenter;

    NSDictionary* rectangle2FontAttributes = @{NSFontAttributeName: [UIFont fontWithName: @"Helvetica" size: 12], NSForegroundColorAttributeName: UIColor.whiteColor, NSParagraphStyleAttributeName: rectangle2Style};

    CGFloat rectangle2TextHeight = [timeText boundingRectWithSize: CGSizeMake(rectangle2Rect.size.width, INFINITY)  options: NSStringDrawingUsesLineFragmentOrigin attributes: rectangle2FontAttributes context: nil].size.height;
    CGContextSaveGState(context);
    CGContextClipToRect(context, rectangle2Rect);
    [timeText drawInRect: CGRectMake(CGRectGetMinX(rectangle2Rect), CGRectGetMinY(rectangle2Rect) + (CGRectGetHeight(rectangle2Rect) - rectangle2TextHeight) / 2, CGRectGetWidth(rectangle2Rect), rectangle2TextHeight) withAttributes: rectangle2FontAttributes];
    CGContextRestoreGState(context);


    //// Rectangle Drawing
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, (lineX + 107), (lineY - 52));

    CGRect rectangleRect = CGRectMake(-131, -22, (lineWidth + 102.5), 30);
    UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRect: rectangleRect];
    CGContextSaveGState(context);
    [rectanglePath addClip];
    CGContextScaleCTM(context, 1.0, -1.0);
    CGContextDrawTiledImage(context, CGRectMake(CGRectGetMinX(rectangleRect), -CGRectGetMinY(rectangleRect), artistImage.size.width, artistImage.size.height), artistImage.CGImage);
    CGContextRestoreGState(context);

    CGContextRestoreGState(context);


    //// Text Drawing
    CGRect textRect = CGRectMake(9, (textY - 119), 147, 17);
    NSMutableParagraphStyle* textStyle = NSMutableParagraphStyle.defaultParagraphStyle.mutableCopy;
    textStyle.alignment = NSTextAlignmentLeft;

    NSDictionary* textFontAttributes = @{NSFontAttributeName: [UIFont systemFontOfSize: UIFont.labelFontSize], NSForegroundColorAttributeName: UIColor.darkGrayColor, NSParagraphStyleAttributeName: textStyle};

    CGFloat textTextHeight = [artistName boundingRectWithSize: CGSizeMake(textRect.size.width, INFINITY)  options: NSStringDrawingUsesLineFragmentOrigin attributes: textFontAttributes context: nil].size.height;
    CGContextSaveGState(context);
    CGContextClipToRect(context, textRect);
    [artistName drawInRect: CGRectMake(CGRectGetMinX(textRect), CGRectGetMinY(textRect) + (CGRectGetHeight(textRect) - textTextHeight) / 2, CGRectGetWidth(textRect), textTextHeight) withAttributes: textFontAttributes];
    CGContextRestoreGState(context);
}

+ (void)drawRight_10WithArtistImage: (UIImage*)artistImage imageY: (CGFloat)imageY imageSize: (CGFloat)imageSize timeText: (NSString*)timeText artistName: (NSString*)artistName
{
    //// General Declarations
    CGContextRef context = UIGraphicsGetCurrentContext();

    //// Color Declarations
    UIColor* color2 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
    UIColor* color6 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 0];

    //// Variable Declarations
    CGFloat timeHeight = 11;
    CGFloat timeWidth = 24;
    CGFloat timeX = 6;
    CGFloat lineX = timeX + timeWidth;
    CGFloat imageX = 77;
    CGFloat lineWidth = imageX - lineX;
    CGFloat timeY = imageSize / 2.0 - timeHeight / 2.0 + imageY;
    CGFloat lineY = imageSize / 2.0 + imageY;
    CGFloat textY = imageY + imageSize;

    //// Rectangle 4 Drawing
    UIBezierPath* rectangle4Path = [UIBezierPath bezierPathWithRect: CGRectMake((lineX + 8), (lineY - 74), (lineWidth - 14), 1)];
    [color2 setFill];
    [rectangle4Path fill];


    //// Rectangle Drawing
    CGRect rectangleRect = CGRectMake((timeX - 6), (timeY - 78), (timeWidth + 14), (timeHeight + 14.5));
    UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRoundedRect: rectangleRect cornerRadius: 12.75];
    [color6 setFill];
    [rectanglePath fill];
    NSMutableParagraphStyle* rectangleStyle = NSMutableParagraphStyle.defaultParagraphStyle.mutableCopy;
    rectangleStyle.alignment = NSTextAlignmentCenter;

    NSDictionary* rectangleFontAttributes = @{NSFontAttributeName: [UIFont fontWithName: @"Helvetica" size: 12], NSForegroundColorAttributeName: UIColor.whiteColor, NSParagraphStyleAttributeName: rectangleStyle};

    CGFloat rectangleTextHeight = [timeText boundingRectWithSize: CGSizeMake(rectangleRect.size.width, INFINITY)  options: NSStringDrawingUsesLineFragmentOrigin attributes: rectangleFontAttributes context: nil].size.height;
    CGContextSaveGState(context);
    CGContextClipToRect(context, rectangleRect);
    [timeText drawInRect: CGRectMake(CGRectGetMinX(rectangleRect), CGRectGetMinY(rectangleRect) + (CGRectGetHeight(rectangleRect) - rectangleTextHeight) / 2, CGRectGetWidth(rectangleRect), rectangleTextHeight) withAttributes: rectangleFontAttributes];
    CGContextRestoreGState(context);


    //// Rectangle 5 Drawing
    CGRect rectangle5Rect = CGRectMake((lineX + 22), (lineY - 74), (lineWidth + 102.5), 30);
    UIBezierPath* rectangle5Path = [UIBezierPath bezierPathWithRect: rectangle5Rect];
    CGContextSaveGState(context);
    [rectangle5Path addClip];
    CGContextScaleCTM(context, 1.0, -1.0);
    CGContextDrawTiledImage(context, CGRectMake(CGRectGetMinX(rectangle5Rect), -CGRectGetMinY(rectangle5Rect), artistImage.size.width, artistImage.size.height), artistImage.CGImage);
    CGContextRestoreGState(context);


    //// Text Drawing
    CGRect textRect = CGRectMake(52, (textY - 119), 147, 17);
    NSMutableParagraphStyle* textStyle = NSMutableParagraphStyle.defaultParagraphStyle.mutableCopy;
    textStyle.alignment = NSTextAlignmentRight;

    NSDictionary* textFontAttributes = @{NSFontAttributeName: [UIFont systemFontOfSize: UIFont.labelFontSize], NSForegroundColorAttributeName: UIColor.darkGrayColor, NSParagraphStyleAttributeName: textStyle};

    CGFloat textTextHeight = [artistName boundingRectWithSize: CGSizeMake(textRect.size.width, INFINITY)  options: NSStringDrawingUsesLineFragmentOrigin attributes: textFontAttributes context: nil].size.height;
    CGContextSaveGState(context);
    CGContextClipToRect(context, textRect);
    [artistName drawInRect: CGRectMake(CGRectGetMinX(textRect), CGRectGetMinY(textRect) + (CGRectGetHeight(textRect) - textTextHeight) / 2, CGRectGetWidth(textRect), textTextHeight) withAttributes: textFontAttributes];
    CGContextRestoreGState(context);
}

+ (void)drawRight_30WithArtistImage: (UIImage*)artistImage imageY: (CGFloat)imageY imageSize: (CGFloat)imageSize timeText: (NSString*)timeText artistName: (NSString*)artistName
{
    //// General Declarations
    CGContextRef context = UIGraphicsGetCurrentContext();

    //// Color Declarations
    UIColor* color2 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
    UIColor* color6 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 0];

    //// Variable Declarations
    CGFloat timeHeight = 11;
    CGFloat timeWidth = 24;
    CGFloat timeX = 6;
    CGFloat lineX = timeX + timeWidth;
    CGFloat imageX = 77;
    CGFloat lineWidth = imageX - lineX;
    CGFloat timeY = imageSize / 2.0 - timeHeight / 2.0 + imageY;
    CGFloat lineY = imageSize / 2.0 + imageY;
    CGFloat textY = imageY + imageSize;

    //// Rectangle Drawing
    UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRect: CGRectMake((lineX + 8), (lineY - 74), (lineWidth - 14), 1)];
    [color2 setFill];
    [rectanglePath fill];


    //// Rectangle 3 Drawing
    CGRect rectangle3Rect = CGRectMake((timeX - 6), (timeY - 78), (timeWidth + 14), (timeHeight + 14.5));
    UIBezierPath* rectangle3Path = [UIBezierPath bezierPathWithRoundedRect: rectangle3Rect cornerRadius: 12.75];
    [color6 setFill];
    [rectangle3Path fill];
    NSMutableParagraphStyle* rectangle3Style = NSMutableParagraphStyle.defaultParagraphStyle.mutableCopy;
    rectangle3Style.alignment = NSTextAlignmentCenter;

    NSDictionary* rectangle3FontAttributes = @{NSFontAttributeName: [UIFont fontWithName: @"Helvetica" size: 12], NSForegroundColorAttributeName: UIColor.whiteColor, NSParagraphStyleAttributeName: rectangle3Style};

    CGFloat rectangle3TextHeight = [timeText boundingRectWithSize: CGSizeMake(rectangle3Rect.size.width, INFINITY)  options: NSStringDrawingUsesLineFragmentOrigin attributes: rectangle3FontAttributes context: nil].size.height;
    CGContextSaveGState(context);
    CGContextClipToRect(context, rectangle3Rect);
    [timeText drawInRect: CGRectMake(CGRectGetMinX(rectangle3Rect), CGRectGetMinY(rectangle3Rect) + (CGRectGetHeight(rectangle3Rect) - rectangle3TextHeight) / 2, CGRectGetWidth(rectangle3Rect), rectangle3TextHeight) withAttributes: rectangle3FontAttributes];
    CGContextRestoreGState(context);


    //// Rectangle 5 Drawing
    CGRect rectangle5Rect = CGRectMake((lineX + 22), (lineY - 74), (lineWidth + 102.5), 90);
    UIBezierPath* rectangle5Path = [UIBezierPath bezierPathWithRect: rectangle5Rect];
    CGContextSaveGState(context);
    [rectangle5Path addClip];
    CGContextScaleCTM(context, 1.0, -1.0);
    CGContextDrawTiledImage(context, CGRectMake(CGRectGetMinX(rectangle5Rect), -CGRectGetMinY(rectangle5Rect), artistImage.size.width, artistImage.size.height), artistImage.CGImage);
    CGContextRestoreGState(context);


    //// Text 2 Drawing
    CGRect text2Rect = CGRectMake(52, (textY - 59), 147, 17);
    NSMutableParagraphStyle* text2Style = NSMutableParagraphStyle.defaultParagraphStyle.mutableCopy;
    text2Style.alignment = NSTextAlignmentRight;

    NSDictionary* text2FontAttributes = @{NSFontAttributeName: [UIFont systemFontOfSize: UIFont.labelFontSize], NSForegroundColorAttributeName: UIColor.darkGrayColor, NSParagraphStyleAttributeName: text2Style};

    CGFloat text2TextHeight = [artistName boundingRectWithSize: CGSizeMake(text2Rect.size.width, INFINITY)  options: NSStringDrawingUsesLineFragmentOrigin attributes: text2FontAttributes context: nil].size.height;
    CGContextSaveGState(context);
    CGContextClipToRect(context, text2Rect);
    [artistName drawInRect: CGRectMake(CGRectGetMinX(text2Rect), CGRectGetMinY(text2Rect) + (CGRectGetHeight(text2Rect) - text2TextHeight) / 2, CGRectGetWidth(text2Rect), text2TextHeight) withAttributes: text2FontAttributes];
    CGContextRestoreGState(context);
}

+ (void)drawLeft_30WithArtistImage: (UIImage*)artistImage imageY: (CGFloat)imageY imageSize: (CGFloat)imageSize timeText: (NSString*)timeText artistName: (NSString*)artistName
{
    //// General Declarations
    CGContextRef context = UIGraphicsGetCurrentContext();

    //// Color Declarations
    UIColor* color2 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
    UIColor* color6 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 0];

    //// Variable Declarations
    CGFloat timeHeight = 11;
    CGFloat timeWidth = 24;
    CGFloat timeX = 6;
    CGFloat lineX = timeX + timeWidth;
    CGFloat imageX = 77;
    CGFloat lineWidth = imageX - lineX;
    CGFloat timeY = imageSize / 2.0 - timeHeight / 2.0 + imageY;
    CGFloat lineY = imageSize / 2.0 + imageY;
    CGFloat textY = imageY + imageSize;

    //// Rectangle 4 Drawing
    UIBezierPath* rectangle4Path = [UIBezierPath bezierPathWithRect: CGRectMake((lineX + 105), (lineY - 74), (lineWidth - 14), 1)];
    [color2 setFill];
    [rectangle4Path fill];


    //// Rectangle 2 Drawing
    CGRect rectangle2Rect = CGRectMake((timeX + 162), (timeY - 78), (timeWidth + 14), (timeHeight + 14.5));
    UIBezierPath* rectangle2Path = [UIBezierPath bezierPathWithRoundedRect: rectangle2Rect cornerRadius: 12.75];
    [color6 setFill];
    [rectangle2Path fill];
    NSMutableParagraphStyle* rectangle2Style = NSMutableParagraphStyle.defaultParagraphStyle.mutableCopy;
    rectangle2Style.alignment = NSTextAlignmentCenter;

    NSDictionary* rectangle2FontAttributes = @{NSFontAttributeName: [UIFont fontWithName: @"Helvetica" size: 12], NSForegroundColorAttributeName: UIColor.whiteColor, NSParagraphStyleAttributeName: rectangle2Style};

    CGFloat rectangle2TextHeight = [timeText boundingRectWithSize: CGSizeMake(rectangle2Rect.size.width, INFINITY)  options: NSStringDrawingUsesLineFragmentOrigin attributes: rectangle2FontAttributes context: nil].size.height;
    CGContextSaveGState(context);
    CGContextClipToRect(context, rectangle2Rect);
    [timeText drawInRect: CGRectMake(CGRectGetMinX(rectangle2Rect), CGRectGetMinY(rectangle2Rect) + (CGRectGetHeight(rectangle2Rect) - rectangle2TextHeight) / 2, CGRectGetWidth(rectangle2Rect), rectangle2TextHeight) withAttributes: rectangle2FontAttributes];
    CGContextRestoreGState(context);


    //// Rectangle Drawing
    CGRect rectangleRect = CGRectMake((lineX - 24), (lineY - 74), (lineWidth + 102.5), 90);
    UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRect: rectangleRect];
    CGContextSaveGState(context);
    [rectanglePath addClip];
    CGContextScaleCTM(context, 1.0, -1.0);
    CGContextDrawTiledImage(context, CGRectMake(CGRectGetMinX(rectangleRect), -CGRectGetMinY(rectangleRect), artistImage.size.width, artistImage.size.height), artistImage.CGImage);
    CGContextRestoreGState(context);


    //// Text Drawing
    CGRect textRect = CGRectMake(9, (textY - 59), 147, 17);
    NSMutableParagraphStyle* textStyle = NSMutableParagraphStyle.defaultParagraphStyle.mutableCopy;
    textStyle.alignment = NSTextAlignmentLeft;

    NSDictionary* textFontAttributes = @{NSFontAttributeName: [UIFont systemFontOfSize: UIFont.labelFontSize], NSForegroundColorAttributeName: UIColor.darkGrayColor, NSParagraphStyleAttributeName: textStyle};

    CGFloat textTextHeight = [artistName boundingRectWithSize: CGSizeMake(textRect.size.width, INFINITY)  options: NSStringDrawingUsesLineFragmentOrigin attributes: textFontAttributes context: nil].size.height;
    CGContextSaveGState(context);
    CGContextClipToRect(context, textRect);
    [artistName drawInRect: CGRectMake(CGRectGetMinX(textRect), CGRectGetMinY(textRect) + (CGRectGetHeight(textRect) - textTextHeight) / 2, CGRectGetWidth(textRect), textTextHeight) withAttributes: textFontAttributes];
    CGContextRestoreGState(context);
}

+ (void)drawLeft_45WithArtistImage: (UIImage*)artistImage imageY: (CGFloat)imageY imageSize: (CGFloat)imageSize timeText: (NSString*)timeText artistName: (NSString*)artistName
{
    //// General Declarations
    CGContextRef context = UIGraphicsGetCurrentContext();

    //// Color Declarations
    UIColor* color2 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
    UIColor* color6 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 0];

    //// Variable Declarations
    CGFloat timeHeight = 11;
    CGFloat timeWidth = 24;
    CGFloat timeX = 6;
    CGFloat lineX = timeX + timeWidth;
    CGFloat imageX = 77;
    CGFloat lineWidth = imageX - lineX;
    CGFloat timeY = imageSize / 2.0 - timeHeight / 2.0 + imageY;
    CGFloat lineY = imageSize / 2.0 + imageY;
    CGFloat textY = imageY + imageSize;

    //// Rectangle 4 Drawing
    UIBezierPath* rectangle4Path = [UIBezierPath bezierPathWithRect: CGRectMake((lineX + 105), (lineY - 74), (lineWidth - 14), 1)];
    [color2 setFill];
    [rectangle4Path fill];


    //// Rectangle 2 Drawing
    CGRect rectangle2Rect = CGRectMake((timeX + 162), (timeY - 78), (timeWidth + 14), (timeHeight + 14.5));
    UIBezierPath* rectangle2Path = [UIBezierPath bezierPathWithRoundedRect: rectangle2Rect cornerRadius: 12.75];
    [color6 setFill];
    [rectangle2Path fill];
    NSMutableParagraphStyle* rectangle2Style = NSMutableParagraphStyle.defaultParagraphStyle.mutableCopy;
    rectangle2Style.alignment = NSTextAlignmentCenter;

    NSDictionary* rectangle2FontAttributes = @{NSFontAttributeName: [UIFont fontWithName: @"Helvetica" size: 12], NSForegroundColorAttributeName: UIColor.whiteColor, NSParagraphStyleAttributeName: rectangle2Style};

    CGFloat rectangle2TextHeight = [timeText boundingRectWithSize: CGSizeMake(rectangle2Rect.size.width, INFINITY)  options: NSStringDrawingUsesLineFragmentOrigin attributes: rectangle2FontAttributes context: nil].size.height;
    CGContextSaveGState(context);
    CGContextClipToRect(context, rectangle2Rect);
    [timeText drawInRect: CGRectMake(CGRectGetMinX(rectangle2Rect), CGRectGetMinY(rectangle2Rect) + (CGRectGetHeight(rectangle2Rect) - rectangle2TextHeight) / 2, CGRectGetWidth(rectangle2Rect), rectangle2TextHeight) withAttributes: rectangle2FontAttributes];
    CGContextRestoreGState(context);


    //// Rectangle Drawing
    CGRect rectangleRect = CGRectMake((lineX - 24), (lineY - 74), (lineWidth + 102.5), 135);
    UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRect: rectangleRect];
    CGContextSaveGState(context);
    [rectanglePath addClip];
    CGContextScaleCTM(context, 1.0, -1.0);
    CGContextDrawTiledImage(context, CGRectMake(CGRectGetMinX(rectangleRect), -CGRectGetMinY(rectangleRect), artistImage.size.width, artistImage.size.height), artistImage.CGImage);
    CGContextRestoreGState(context);


    //// Text Drawing
    CGRect textRect = CGRectMake(9, (textY - 14), 147, 17);
    NSMutableParagraphStyle* textStyle = NSMutableParagraphStyle.defaultParagraphStyle.mutableCopy;
    textStyle.alignment = NSTextAlignmentLeft;

    NSDictionary* textFontAttributes = @{NSFontAttributeName: [UIFont systemFontOfSize: UIFont.labelFontSize], NSForegroundColorAttributeName: UIColor.darkGrayColor, NSParagraphStyleAttributeName: textStyle};

    CGFloat textTextHeight = [artistName boundingRectWithSize: CGSizeMake(textRect.size.width, INFINITY)  options: NSStringDrawingUsesLineFragmentOrigin attributes: textFontAttributes context: nil].size.height;
    CGContextSaveGState(context);
    CGContextClipToRect(context, textRect);
    [artistName drawInRect: CGRectMake(CGRectGetMinX(textRect), CGRectGetMinY(textRect) + (CGRectGetHeight(textRect) - textTextHeight) / 2, CGRectGetWidth(textRect), textTextHeight) withAttributes: textFontAttributes];
    CGContextRestoreGState(context);
}

+ (void)drawRight_45WithArtistImage: (UIImage*)artistImage imageY: (CGFloat)imageY imageSize: (CGFloat)imageSize timeText: (NSString*)timeText artistName: (NSString*)artistName
{
    //// General Declarations
    CGContextRef context = UIGraphicsGetCurrentContext();

    //// Color Declarations
    UIColor* color2 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
    UIColor* color6 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 0];

    //// Variable Declarations
    CGFloat timeHeight = 11;
    CGFloat timeWidth = 24;
    CGFloat timeX = 6;
    CGFloat lineX = timeX + timeWidth;
    CGFloat imageX = 77;
    CGFloat lineWidth = imageX - lineX;
    CGFloat timeY = imageSize / 2.0 - timeHeight / 2.0 + imageY;
    CGFloat lineY = imageSize / 2.0 + imageY;
    CGFloat textY = imageY + imageSize;

    //// Rectangle 4 Drawing
    UIBezierPath* rectangle4Path = [UIBezierPath bezierPathWithRect: CGRectMake((lineX + 8), (lineY - 74), (lineWidth - 14), 1)];
    [color2 setFill];
    [rectangle4Path fill];


    //// Rectangle 2 Drawing
    CGRect rectangle2Rect = CGRectMake((timeX - 6), (timeY - 78), (timeWidth + 14), (timeHeight + 14.5));
    UIBezierPath* rectangle2Path = [UIBezierPath bezierPathWithRoundedRect: rectangle2Rect cornerRadius: 12.75];
    [color6 setFill];
    [rectangle2Path fill];
    NSMutableParagraphStyle* rectangle2Style = NSMutableParagraphStyle.defaultParagraphStyle.mutableCopy;
    rectangle2Style.alignment = NSTextAlignmentCenter;

    NSDictionary* rectangle2FontAttributes = @{NSFontAttributeName: [UIFont fontWithName: @"Helvetica" size: 12], NSForegroundColorAttributeName: UIColor.whiteColor, NSParagraphStyleAttributeName: rectangle2Style};

    CGFloat rectangle2TextHeight = [timeText boundingRectWithSize: CGSizeMake(rectangle2Rect.size.width, INFINITY)  options: NSStringDrawingUsesLineFragmentOrigin attributes: rectangle2FontAttributes context: nil].size.height;
    CGContextSaveGState(context);
    CGContextClipToRect(context, rectangle2Rect);
    [timeText drawInRect: CGRectMake(CGRectGetMinX(rectangle2Rect), CGRectGetMinY(rectangle2Rect) + (CGRectGetHeight(rectangle2Rect) - rectangle2TextHeight) / 2, CGRectGetWidth(rectangle2Rect), rectangle2TextHeight) withAttributes: rectangle2FontAttributes];
    CGContextRestoreGState(context);


    //// Rectangle Drawing
    CGRect rectangleRect = CGRectMake((lineX + 22), (lineY - 74), (lineWidth + 102.5), 135);
    UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRect: rectangleRect];
    CGContextSaveGState(context);
    [rectanglePath addClip];
    CGContextScaleCTM(context, 1.0, -1.0);
    CGContextDrawTiledImage(context, CGRectMake(CGRectGetMinX(rectangleRect), -CGRectGetMinY(rectangleRect), artistImage.size.width, artistImage.size.height), artistImage.CGImage);
    CGContextRestoreGState(context);


    //// Text Drawing
    CGRect textRect = CGRectMake(52, (textY - 14), 147, 17);
    NSMutableParagraphStyle* textStyle = NSMutableParagraphStyle.defaultParagraphStyle.mutableCopy;
    textStyle.alignment = NSTextAlignmentRight;

    NSDictionary* textFontAttributes = @{NSFontAttributeName: [UIFont systemFontOfSize: UIFont.labelFontSize], NSForegroundColorAttributeName: UIColor.darkGrayColor, NSParagraphStyleAttributeName: textStyle};

    CGFloat textTextHeight = [artistName boundingRectWithSize: CGSizeMake(textRect.size.width, INFINITY)  options: NSStringDrawingUsesLineFragmentOrigin attributes: textFontAttributes context: nil].size.height;
    CGContextSaveGState(context);
    CGContextClipToRect(context, textRect);
    [artistName drawInRect: CGRectMake(CGRectGetMinX(textRect), CGRectGetMinY(textRect) + (CGRectGetHeight(textRect) - textTextHeight) / 2, CGRectGetWidth(textRect), textTextHeight) withAttributes: textFontAttributes];
    CGContextRestoreGState(context);
}

+ (void)drawRight_15WithArtistImage: (UIImage*)artistImage imageY: (CGFloat)imageY imageSize: (CGFloat)imageSize timeText: (NSString*)timeText artistName: (NSString*)artistName
{
    //// General Declarations
    CGContextRef context = UIGraphicsGetCurrentContext();

    //// Color Declarations
    UIColor* color2 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
    UIColor* color6 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 0];

    //// Variable Declarations
    CGFloat timeHeight = 11;
    CGFloat timeWidth = 24;
    CGFloat timeX = 6;
    CGFloat lineX = timeX + timeWidth;
    CGFloat imageX = 77;
    CGFloat lineWidth = imageX - lineX;
    CGFloat timeY = imageSize / 2.0 - timeHeight / 2.0 + imageY;
    CGFloat lineY = imageSize / 2.0 + imageY;
    CGFloat textY = imageY + imageSize;

    //// Rectangle 4 Drawing
    UIBezierPath* rectangle4Path = [UIBezierPath bezierPathWithRect: CGRectMake((lineX + 8), (lineY - 74), (lineWidth - 14), 1)];
    [color2 setFill];
    [rectangle4Path fill];


    //// Rectangle 2 Drawing
    CGRect rectangle2Rect = CGRectMake((timeX - 6), (timeY - 78), (timeWidth + 14), (timeHeight + 14.5));
    UIBezierPath* rectangle2Path = [UIBezierPath bezierPathWithRoundedRect: rectangle2Rect cornerRadius: 12.75];
    [color6 setFill];
    [rectangle2Path fill];
    NSMutableParagraphStyle* rectangle2Style = NSMutableParagraphStyle.defaultParagraphStyle.mutableCopy;
    rectangle2Style.alignment = NSTextAlignmentCenter;

    NSDictionary* rectangle2FontAttributes = @{NSFontAttributeName: [UIFont fontWithName: @"Helvetica" size: 12], NSForegroundColorAttributeName: UIColor.whiteColor, NSParagraphStyleAttributeName: rectangle2Style};

    CGFloat rectangle2TextHeight = [timeText boundingRectWithSize: CGSizeMake(rectangle2Rect.size.width, INFINITY)  options: NSStringDrawingUsesLineFragmentOrigin attributes: rectangle2FontAttributes context: nil].size.height;
    CGContextSaveGState(context);
    CGContextClipToRect(context, rectangle2Rect);
    [timeText drawInRect: CGRectMake(CGRectGetMinX(rectangle2Rect), CGRectGetMinY(rectangle2Rect) + (CGRectGetHeight(rectangle2Rect) - rectangle2TextHeight) / 2, CGRectGetWidth(rectangle2Rect), rectangle2TextHeight) withAttributes: rectangle2FontAttributes];
    CGContextRestoreGState(context);


    //// Rectangle Drawing
    CGRect rectangleRect = CGRectMake((lineX + 22), (lineY - 74), (lineWidth + 102.5), 270);
    UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRect: rectangleRect];
    CGContextSaveGState(context);
    [rectanglePath addClip];
    CGContextScaleCTM(context, 1.0, -1.0);
    CGContextDrawTiledImage(context, CGRectMake(CGRectGetMinX(rectangleRect), -CGRectGetMinY(rectangleRect), artistImage.size.width, artistImage.size.height), artistImage.CGImage);
    CGContextRestoreGState(context);


    //// Text Drawing
    CGRect textRect = CGRectMake(52, (textY + 121), 147, 17);
    NSMutableParagraphStyle* textStyle = NSMutableParagraphStyle.defaultParagraphStyle.mutableCopy;
    textStyle.alignment = NSTextAlignmentRight;

    NSDictionary* textFontAttributes = @{NSFontAttributeName: [UIFont systemFontOfSize: UIFont.labelFontSize], NSForegroundColorAttributeName: UIColor.darkGrayColor, NSParagraphStyleAttributeName: textStyle};

    CGFloat textTextHeight = [artistName boundingRectWithSize: CGSizeMake(textRect.size.width, INFINITY)  options: NSStringDrawingUsesLineFragmentOrigin attributes: textFontAttributes context: nil].size.height;
    CGContextSaveGState(context);
    CGContextClipToRect(context, textRect);
    [artistName drawInRect: CGRectMake(CGRectGetMinX(textRect), CGRectGetMinY(textRect) + (CGRectGetHeight(textRect) - textTextHeight) / 2, CGRectGetWidth(textRect), textTextHeight) withAttributes: textFontAttributes];
    CGContextRestoreGState(context);
}

+ (void)drawLeft_15WithArtistImage: (UIImage*)artistImage imageY: (CGFloat)imageY imageSize: (CGFloat)imageSize timeText: (NSString*)timeText artistName: (NSString*)artistName
{
    //// General Declarations
    CGContextRef context = UIGraphicsGetCurrentContext();

    //// Color Declarations
    UIColor* color2 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 1];
    UIColor* color6 = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 0];

    //// Variable Declarations
    CGFloat timeHeight = 11;
    CGFloat timeWidth = 24;
    CGFloat timeX = 6;
    CGFloat lineX = timeX + timeWidth;
    CGFloat imageX = 77;
    CGFloat lineWidth = imageX - lineX;
    CGFloat timeY = imageSize / 2.0 - timeHeight / 2.0 + imageY;
    CGFloat lineY = imageSize / 2.0 + imageY;
    CGFloat textY = imageY + imageSize;

    //// Rectangle 4 Drawing
    UIBezierPath* rectangle4Path = [UIBezierPath bezierPathWithRect: CGRectMake((lineX + 105), (lineY - 74), (lineWidth - 14), 1)];
    [color2 setFill];
    [rectangle4Path fill];


    //// Rectangle 2 Drawing
    CGRect rectangle2Rect = CGRectMake((timeX + 162), (timeY - 78), (timeWidth + 14), (timeHeight + 14.5));
    UIBezierPath* rectangle2Path = [UIBezierPath bezierPathWithRoundedRect: rectangle2Rect cornerRadius: 12.75];
    [color6 setFill];
    [rectangle2Path fill];
    NSMutableParagraphStyle* rectangle2Style = NSMutableParagraphStyle.defaultParagraphStyle.mutableCopy;
    rectangle2Style.alignment = NSTextAlignmentCenter;

    NSDictionary* rectangle2FontAttributes = @{NSFontAttributeName: [UIFont fontWithName: @"Helvetica" size: 12], NSForegroundColorAttributeName: UIColor.whiteColor, NSParagraphStyleAttributeName: rectangle2Style};

    CGFloat rectangle2TextHeight = [timeText boundingRectWithSize: CGSizeMake(rectangle2Rect.size.width, INFINITY)  options: NSStringDrawingUsesLineFragmentOrigin attributes: rectangle2FontAttributes context: nil].size.height;
    CGContextSaveGState(context);
    CGContextClipToRect(context, rectangle2Rect);
    [timeText drawInRect: CGRectMake(CGRectGetMinX(rectangle2Rect), CGRectGetMinY(rectangle2Rect) + (CGRectGetHeight(rectangle2Rect) - rectangle2TextHeight) / 2, CGRectGetWidth(rectangle2Rect), rectangle2TextHeight) withAttributes: rectangle2FontAttributes];
    CGContextRestoreGState(context);


    //// Rectangle Drawing
    CGRect rectangleRect = CGRectMake((lineX - 24), (lineY - 74), (lineWidth + 102.5), 270);
    UIBezierPath* rectanglePath = [UIBezierPath bezierPathWithRect: rectangleRect];
    CGContextSaveGState(context);
    [rectanglePath addClip];
    CGContextScaleCTM(context, 1.0, -1.0);
    CGContextDrawTiledImage(context, CGRectMake(CGRectGetMinX(rectangleRect), -CGRectGetMinY(rectangleRect), artistImage.size.width, artistImage.size.height), artistImage.CGImage);
    CGContextRestoreGState(context);


    //// Text Drawing
    CGRect textRect = CGRectMake(8, (textY + 121), 147, 17);
    NSMutableParagraphStyle* textStyle = NSMutableParagraphStyle.defaultParagraphStyle.mutableCopy;
    textStyle.alignment = NSTextAlignmentLeft;

    NSDictionary* textFontAttributes = @{NSFontAttributeName: [UIFont systemFontOfSize: UIFont.labelFontSize], NSForegroundColorAttributeName: UIColor.darkGrayColor, NSParagraphStyleAttributeName: textStyle};

    CGFloat textTextHeight = [artistName boundingRectWithSize: CGSizeMake(textRect.size.width, INFINITY)  options: NSStringDrawingUsesLineFragmentOrigin attributes: textFontAttributes context: nil].size.height;
    CGContextSaveGState(context);
    CGContextClipToRect(context, textRect);
    [artistName drawInRect: CGRectMake(CGRectGetMinX(textRect), CGRectGetMinY(textRect) + (CGRectGetHeight(textRect) - textTextHeight) / 2, CGRectGetWidth(textRect), textTextHeight) withAttributes: textFontAttributes];
    CGContextRestoreGState(context);
}

@end
