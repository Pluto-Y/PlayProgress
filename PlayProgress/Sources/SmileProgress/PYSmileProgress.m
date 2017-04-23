//
//  PYSmileProgress.m
//  PlayProgress
//
//  Created by Pluto Y on 23/04/2017.
//  Copyright © 2017 com.pluto-y. All rights reserved.
//

#import "PYSmileProgress.h"

@interface PYSmileProgress() {
    CGFloat width;
    CGFloat height;
    CGFloat lineWidth;
}

@end

@implementation PYSmileProgress

- (instancetype)init {
    self = [super init];
    if (self) {
        [self setup];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setup {
    width = self.frame.size.width;
    height = self.frame.size.height;
    lineWidth = MIN(width, height) / 9.0;
    
    if (_strokeColor == nil) {
        _strokeColor = [UIColor redColor];
    }
}

- (void)drawRect:(CGRect)rect {
    
    UIBezierPath *leftEyePointPath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake((sqrt(2) - 1) / 2.0 * width - lineWidth / 2.0, (sqrt(2) - 1) / 2.0 * height - lineWidth / 2.0, lineWidth, lineWidth)];
    leftEyePointPath.lineWidth = lineWidth;
    [_strokeColor setFill];
    [leftEyePointPath fill];
    
    UIBezierPath *rightEyePointPaht = [UIBezierPath bezierPathWithOvalInRect:CGRectMake((1.0 - (sqrt(2) - 1) / 2.0) * width - lineWidth / 2.0, (sqrt(2) - 1) / 2.0 * height - lineWidth / 2.0, lineWidth, lineWidth)];
    rightEyePointPaht.lineWidth = lineWidth;
    [_strokeColor setFill];
    [rightEyePointPaht fill];
    
    UIBezierPath *simlePath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(width / 2.0, height / 2.0) radius:(MIN(width, height) - lineWidth) / 2.0 startAngle:0 endAngle:M_PI clockwise:YES];
    simlePath.lineWidth = lineWidth;
    simlePath.lineCapStyle = kCGLineCapRound;
    [_strokeColor setStroke];
    [simlePath stroke];
    
}

@end
