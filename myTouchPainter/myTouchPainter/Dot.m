//
//  Dot.m
//  myTouchPainter
//
//  Created by liushu on 16/1/1.
//  Copyright © 2016年 liushu. All rights reserved.
//

#import "Dot.h"

@implementation Dot
@synthesize size = _size, color = _color;

- (void)dealloc
{
    _color = nil;
}

#pragma mark - NSCopying delegate method;

- (id)copyWithZone:(NSZone *)zone
{
    Dot *dotCopy = [[[self class] allocWithZone:zone] initWithLocation:_location];
    
    // copy the color
    [dotCopy setColor:[UIColor colorWithCGColor:[_color CGColor]]];
    
    // copy the size
    [dotCopy setSize:_size];
    
    return dotCopy;
}

@end
